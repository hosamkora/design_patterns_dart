abstract class SortingAlogtrism<T> {
  Iterable<T> sort(Iterable<T> unSortedList);
}

class BubbleSort<T> implements SortingAlogtrism<T> {
  @override
  Iterable<T> sort(Iterable<T> unSortedList) {
    print('Bubble Sort');
    return [];
  }
}

class MergeSort<T> implements SortingAlogtrism<T> {
  @override
  Iterable<T> sort(Iterable<T> unSortedList) {
    print('MergeSort');
    return [];
  }
}
