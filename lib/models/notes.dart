class Notes {
  String notesId;
  String notesTitle;
  DateTime createdDateTime;
  DateTime lastEditedDateTime;

  Notes(
      {this.createdDateTime,
      this.lastEditedDateTime,
      this.notesId,
      this.notesTitle});
}
