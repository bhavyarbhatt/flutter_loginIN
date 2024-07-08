class Users {
    final int? usrId;
    final String usrName;
    final String usrPassword;

    Users({
        this.usrId,
        required this.usrName,
        required this.usrPassword,
    });

    Users copyWith({
        int? usrId,
        String? usrName,
        String? usrPassword,
    }) => 
        Users(
            usrId: usrId ?? this.usrId,
            usrName: usrName ?? this.usrName,
            usrPassword: usrPassword ?? this.usrPassword,
        );
}
