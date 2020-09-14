// URI - 1040: https://www.urionlinejudge.com.br/judge/pt/problems/view/1040

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const lines = input.split('\n');

const grades = Array.from(lines.shift().split(' '), grade => parseFloat(grade));
const averageGrade = calculateAverageGrade(grades);
console.log('Media: ' + averageGrade.toFixed(1));
const studentSituation = getSituationForGrade(parseFloat(averageGrade));
console.log(studentSituation);
if (studentSituation === 'Aluno em exame.') {
  const recoveryNote = parseFloat(lines.shift());
  console.log('Nota do exame: ' + recoveryNote.toFixed(1));
  const finalMedia = calculateFinalMedia(parseFloat(averageGrade), parseFloat(recoveryNote));
  console.log(getFinalSituation(parseFloat(finalMedia)));
  console.log('Media final: ' + finalMedia.toFixed(1));
}

function calculateAverageGrade(grades) {
  return (((grades[0] * 2) + (grades[1] * 3) + (grades[2] * 4) + (grades[3] * 1)) / 10);
} 

function calculateFinalMedia(averageGrade, recoveryNote) {
  return ((averageGrade + recoveryNote) / 2);
}

function getSituationForGrade(grade) {
  if (grade >= 7.0)
    return 'Aluno aprovado.';
  else if (grade < 5.0)
    return 'Aluno reprovado.';
  else
    return 'Aluno em exame.';
}

function getFinalSituation(grade) {
  if (grade >= 5.0) 
    return 'Aluno aprovado.';
  else
    return 'Aluno reprovado.';
}
