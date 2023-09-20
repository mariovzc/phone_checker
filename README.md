# README

This README would normally document whatever steps are necessary to get the
application up and running.

UML:
---------------------------------
|        PhoneContact           |
---------------------------------
| - phoneNumber: String         |
| - feedback: List<Feedback>    |
| - isSpam: boolean             |
---------------------------------
| + addFeedback(feedback: Feedback)|
| + isSpam(): boolean           |
---------------------------------

---------------------------------
|         Feedback              |
---------------------------------
| - user: User                  |
| - comment: String             |
| - rating: int                 |
| - date: Date                  |
---------------------------------
| + getComment(): String        |
| + getRating(): int            |
| + getDate(): Date             |
| + getUser(): User             |
---------------------------------

---------------------------------
|            User               |
---------------------------------
| - username: String            |
| - email: String               |
| - password: String            |
---------------------------------
| + getUsername(): String       |
| + getEmail(): String          |
| + getPassword(): String       |
---------------------------------