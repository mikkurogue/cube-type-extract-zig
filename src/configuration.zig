const std = @import("std");

pub const Prefix = struct {
    name: []const u8,
    prefix: []const u8,
};

pub const Configuration = struct {
    cube_url: []const u8,
    output: []const u8,
    file_name: []const u8,
    prefixes: []Prefix, // TODO: check if this is correct slice syntax - slice is immutable

    allocator: std.mem.Allocator,

    /// Init the configuration
    pub fn init(self: *Configuration) !void {
        _ = self;
    }

    pub fn deinit() void {}

    pub fn validate() bool {}

    pub fn read(self: *Configuration) !Configuration {
        const data = try std.fs.cwd().readFileAlloc(self.file_name, "./", 1024);

        defer self.allocator.free(data);

        return std.json.parseFromSlice(Configuration, self.allocator, data, .{ .allocate = .alloc_if_needed });
    }
};
