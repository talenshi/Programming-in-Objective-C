// Tests the Music classes
// Chapter 15 exercise 9
#import "MusicCollection.h"

int main()
{
    @autoreleasepool {
        // Initialize the songs
        Song *song1 = [[Song alloc] initWithTitle: @"Thick As a Brick"
            andArtist: @"Jethro Tull" andAlbum: @"Thick As a Brick"
            andTime: 2706];
        Song *song2 = [[Song alloc] initWithTitle: @"Starless"
            andArtist: @"King Crimson" andAlbum: @"Red"
            andTime: 377];
        Song *song3 = [[Song alloc] initWithTitle: @"The Undercover Man"
            andArtist: @"Van der Graaf Generator" andAlbum: @"Godbluff"
            andTime: 446];
        Song *song4 = [[Song alloc] initWithTitle: @"The Advent of Panurge"
            andArtist: @"Gentle Giant" andAlbum: @"Octopus"
            andTime: 281];
        Song *song5=[[Song alloc] initWithTitle:@"The Battle of Epping Forest"
            andArtist: @"Genesis" andAlbum: @"Selling England by the Pound"
            andTime: 706];

        // Initialize the playlists
        NSMutableString *playlist1Name = [NSMutableString stringWithString:
            @"playlist1"];
        NSMutableString *playlist2Name = [NSMutableString stringWithString:
            @"playlist2"];
        NSMutableString *mainPlaylistName = [NSMutableString stringWithString:
            @"library"];
        Playlist *library = [[Playlist alloc] initWithName: mainPlaylistName];
        Playlist *playlist1 = [[Playlist alloc] initWithName: playlist1Name];
        Playlist *playlist2 = [[Playlist alloc] initWithName: playlist2Name];

        // Add some songs to the playlists
        [library addSong: song1];
        [library addSong: song2];
        [library addSong: song3];
        [library addSong: song4];
        [library addSong: song5];
        [playlist1 addSong: song3];
        [playlist1 addSong: song4];
        [playlist2 addSong: song5];

        // Start a music collection
        MusicCollection *aCollection = [[MusicCollection alloc]
            initWithLibrary: library];
        [aCollection addPlaylist: playlist1];
        [aCollection addPlaylist: playlist2];
        [aCollection printMusicCollection];
    }

    return 0;
}
