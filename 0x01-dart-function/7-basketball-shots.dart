int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var teamAScore = teamA['Free throws'] !+ teamA['2 pointers'] !* 2 + teamA['3 pointers'] !* 3;
  var teamBScore = teamB['Free throws'] !+ teamB['2 pointers'] !* 2 + teamB['3 pointers'] !* 3;

  if (teamAScore > teamBScore) {
    return 1;
  } else if (teamAScore < teamBScore) {
    return 2;
  } else {
    return 0;
  }
}