import Vapor
import Fluent
import FluentPostgresDriver

public func configure(_ app: Application) throws {
    app.databases.use(.postgres(hostname: "localhost", username: "arslan", password: ""), as: .psql)
    app.migrations.add(Migration_1(), to: .psql)
    try routes(app)
}
