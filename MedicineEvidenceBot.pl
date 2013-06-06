use MediaWiki::Bot;

my $bot = MediaWiki::Bot->new({
    assert      => 'bot',
    host        => 'chrismaloney.org',
    login_data  => { username => "TestBot", password => "Flunn" },
});

my $revid = $bot->get_last("User:TestBot/sandbox", "TestBot");
print "Reverting to $revid\n" if defined($revid);
$bot->revert('User:TestBot/sandbox', $revid, 'rvv');