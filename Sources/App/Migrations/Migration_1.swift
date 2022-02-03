import Fluent

struct Migration_1: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("bookmarks")
            .id()
            .field("name", .string)
            .field("url", .string)
//            .field("gender", .string)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("galaxies").delete()
    }

}
