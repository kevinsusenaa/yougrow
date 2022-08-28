class PageRequest{
  int size;
  int page;
  String? search;

  PageRequest({required this.size, required this.page, this.search});
}