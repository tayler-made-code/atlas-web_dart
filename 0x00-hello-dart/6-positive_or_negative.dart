void main(List<String> number) {
  number.isNotEmpty
      ? int.parse(number[0]) == 0
          ? print('${number[0]} is zero')
            : int.parse(number[0]) > 0
              ? print('${number[0]} is positive')
                : print('${number[0]} is negative')
      : print('Not a number');
}