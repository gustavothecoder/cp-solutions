// URI - 1047: https://www.urionlinejudge.com.br/judge/pt/problems/view/1047

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const values = input.split(' ').map(value => parseInt(value));

const startTime = { hour: values[0], minute: values[1] };
const endTime = { hour: values[2], minute: values[3] };
console.log(calculateGameDuration(startTime, endTime));

function calculateGameDuration(startTime, endTime) {
  const time = calculateDuration(startTime, endTime);
  return `O JOGO DUROU ${time.hours} HORA(S) E ${time.minutes} MINUTO(S)`;
}

function calculateDuration(startTime, endTime) {
  const startTimeInMinutes = convertTimeInMinutes(startTime);
  const endTimeInMinutes = convertTimeInMinutes(endTime);
  if (startTimeInMinutes === endTimeInMinutes)
    return { hours:24, minutes: 0 };
  else {
    const durationInMinutes = endTimeInMinutes - startTimeInMinutes;
    return convertMinutesInTime(durationInMinutes); 
  }  
}

function convertTimeInMinutes(time) {
  return (time.hour * 60) + time.minute;
}

function convertMinutesInTime(minutesToConvert) {
  let result;
  if (minutesToConvert > 0) {
    result = convertPositiveMinutesInTime(minutesToConvert)
  } else {
    result = convertNegativeMinutesInTime(minutesToConvert)
  }
  return result
}

function convertPositiveMinutesInTime(minutesToConvert) {
  const hours = minutesToConvert >= 60 
    ? parseInt(minutesToConvert / 60)
    : 0;
  const minutes = minutesToConvert - (hours * 60);
  return { hours, minutes }
}

function convertNegativeMinutesInTime(minutesToConvert) {
  let hours, minutes, hour;
  if (minutesToConvert <= -60) {
    hour = parseInt((Math.abs(minutesToConvert) / 60));
    hours = 23 - hour;
    minutes = 0
    Math.abs(minutesToConvert) === (hour * 60) 
      ? hours++ 
      : minutes = 60 - (Math.abs(minutesToConvert) - (hour * 60));  
  } else {
    hours = 23;
    minutes = minutesToConvert + 60;
  }
  return { hours, minutes }
}
