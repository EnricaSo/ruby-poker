[33mcommit fb7d453ce1e6a326fd62067f1610c7e18f89d2eb[m
Author: Enrica Soria <Enrica Soria>
Date:   Sun Mar 5 19:14:09 2017 +0100

    New example tris

[33mcommit 99c3bd3e7ef46e60705652271083e583f106afd2[m
Merge: 0bed227 03b0c50
Author: Rob Olson <rko618@gmail.com>
Date:   Sun Aug 9 14:05:32 2015 +0200

    Merge pull request #7 from genewoo/dev_support_ruby_2.2
    
    Support ruby 2.2 for developer

[33mcommit 03b0c503ad558821b6c6f2475383139045a2d958[m
Author: genewoo <genewoo@gmail.com>
Date:   Sat Jul 18 23:56:47 2015 +0800

    Support ruby 2.2 for developer
    
    - Add 2.2 to travis CI
    - Add unittest dependencies to ruby 2.2 only

[33mcommit 0bed2278e8851a843c30f885841ead9499a5ec62[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Feb 1 16:09:52 2015 -0800

    Fix readme formating + misc

[33mcommit d10d60f947208adc4003f26ba56588eae878ea74[m
Merge: d1f8da8 bfaabea
Author: Rob Olson <rko618@gmail.com>
Date:   Sun Feb 1 15:54:09 2015 -0800

    Merge pull request #5 from bbuchalter/integration_tests
    
    Provide instruction for running integration tests.

[33mcommit bfaabeafa1b50ff3da87a7bc670bb380a2049bcb[m
Author: Brian Buchalter <bal711@gmail.com>
Date:   Tue Nov 11 07:29:36 2014 -0700

    Provide instruction for running integration tests.

[33mcommit d1f8da862d46a652c4e6bf2c26911259976f087a[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Sep 1 21:34:45 2014 -0700

    Release notes for 1.0.1

[33mcommit 19bc0240e9305f60ef59227930ac310e97d6d102[m
Merge: f623cf3 09f4da3
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Sep 1 21:01:22 2014 -0700

    Merge pull request #4 from thelazycamel/fix_full_house
    
    Rearrange full house cards to return correct order when low pairs

[33mcommit 09f4da35f885a4262c26fc71d34498c8540d0575[m
Author: Stuart Hanscombe <hanscs1969@yahoo.co.uk>
Date:   Sat Aug 16 19:28:08 2014 +0200

    rearrange full house cards to return correct order when low pairs

[33mcommit f623cf390d242c3ae78584e83e7a8648035109b4[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Feb 9 13:21:43 2014 -0800

    PokerHand#straight? should return false instead of nil for no match
    
    consistency

[33mcommit babb42d2676f84ea94ac15fc249d1f0936fd64d5[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Feb 9 11:25:52 2014 -0800

    Add travis status to README

[33mcommit 8cf710bc133197f9af5c52cedcd4f2a93a5f1f56[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Feb 9 11:13:46 2014 -0800

    Have travis test under Ruby 2.1.0
    
    Also 'jruby' is the same as jruby-19mode

[33mcommit 62b416945456c2066d6b4575844a89703bb3a81f[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Feb 9 11:11:11 2014 -0800

    Remove Gemfile.lock from git
    
    don't need since ruby-poker is a library

[33mcommit 48aa3131fbb52bd6d69d3293410104693b99e3ef[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sat Dec 28 05:57:01 2013 +0100

    Declare version 1.0.0

[33mcommit 0780f23f58e71dfe0343c25acd27400794157813[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sat Dec 28 05:49:50 2013 +0100

    link to rdoc.info in README

[33mcommit f56bbdad355cb354730a3732adb0402471827baf[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Tue Dec 24 12:59:46 2013 +0100

    Validate library against literally a million poker hands.
    
    Test script is run at will because it takes a long time and requires
    downloading 23MB file.

[33mcommit 4c2402b0bb301d0974dc8477ed6c52f9f54cca49[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Tue Dec 24 12:50:59 2013 +0100

    Simplify Card class to fix hellacious bug
    
    The logic is some of the Card constructors, notibly build_from_value and
    build_from_face_suit_values was overly complicated and under tested. The
    result was a bug where the Card#value did not match the corresponding
    suit and face value.
    
    This commit changes the calculate of value (simplifies it a lot). The
    value should be internal to the Card class but this is a breaking change
    if anyone was depending on it to be stable.

[33mcommit 5591317992879b65980b65aedbf517fba653375e[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Tue Dec 24 09:31:12 2013 +0100

    immaterial variable name change

[33mcommit 533069b93d62f24ca9a3294fea64449b025e19e0[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Dec 23 09:25:12 2013 +0100

    Mention ruby 2.0 support in README

[33mcommit aa2fdac2e712b820f8484ece7e0f6de5c2c7ce20[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Dec 23 09:05:14 2013 +0100

    Add rank for empty hands. Fixes #1
    
    Hands with no cards in them now return a rank of "Empty Hand".

[33mcommit b7157a46bc53ca61057e7ceafad9bb1524c02455[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Dec 23 09:03:20 2013 +0100

    Add rake to the test group
    
    Without this `bundle exec rake` errors out

[33mcommit b40c09329b33c1fa859495c967346f513a6091ca[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Dec 23 08:03:03 2013 +0100

    Add travis.yml

[33mcommit 2ebf0249215ebf04be9edec98a957f858d290773[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Dec 23 07:42:31 2013 +0100

    remove trailing whitespace

[33mcommit deedbe378ba2873f799497cbb6f984b0795248a0[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Dec 23 07:41:38 2013 +0100

    fix unused variable warning

[33mcommit 6fd0b75b4d403d4aca4fc2f3fc24ef95a8c720df[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Dec 23 07:39:58 2013 +0100

    Add Gemfile
    
    * move to shoulda-context

[33mcommit 7bdd90cfddfcaaaf5c3925b0592e7999c5cb859c[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Thu Oct 6 23:54:25 2011 -0700

    Fix Card#initialize for Ruby 1.9
    
    Remove test for Card#hash because it is implementation specific
    Rubinius has different hashing than MRI

[33mcommit c6a33eddab0c2b6934d41b8e2078d7b07fb05fd6[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Thu Oct 6 23:04:05 2011 -0700

    Clean up Rakefile

[33mcommit cded9be68d1f63d020bdc4642e3782d2ca1dbd2b[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Jul 11 23:39:52 2010 -0700

    Change dependency from thoughtbot-shoulda to just shoulda.

[33mcommit f21c5259dc2d09275c5d23f147e9f41f4fd12adf[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Jul 11 23:39:05 2010 -0700

    PokerHand#each is a resolving method to @hand

[33mcommit f4919c62cf176217e006a0e2993090aaab013976[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Jul 11 23:38:01 2010 -0700

    Fix warnings from ruby.

[33mcommit 02a7d98cf0c1b9c47e7990368a6db337e9acd31e[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Jul 11 23:36:39 2010 -0700

    Should not be defining the '+' method twice.

[33mcommit 5bcc4134ff5ab10c211c35ee3c160a1fb17b919f[m
Merge: b5e97e5 9b2fb15
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Jul 11 21:36:57 2010 -0700

    Merge remote branch 'piglop/master'

[33mcommit 9b2fb157d8efc8b6e1df7865b59edd916bdd6ed1[m
Author: Michaël Witrant <mike@lepton.fr>
Date:   Mon Jul 5 08:28:00 2010 +0200

    hand addition

[33mcommit 781111106360e860cc98c700eda98fc0fb5405da[m
Author: Michaël Witrant <mike@lepton.fr>
Date:   Mon Jul 5 08:10:51 2010 +0200

    PokerHand is Enumerable

[33mcommit 1615d77240c7b96b51b3d9379a6a5f85775b7c3b[m
Author: Michaël Witrant <mike@lepton.fr>
Date:   Sun Jul 4 15:59:24 2010 +0200

    added PokerHand#match? to check usual hand expressions

[33mcommit 2eb939c3b5d97f6250b41321488bf9c23cea9f92[m
Author: Michaël Witrant <mike@lepton.fr>
Date:   Thu Jul 1 21:43:53 2010 +0200

    detect invalid cards with a clear message

[33mcommit f3f8b3942f75b87f39b4243619b6c9537d3c3e34[m
Author: Michaël Witrant <mike@lepton.fr>
Date:   Sun Jul 4 15:56:52 2010 +0200

    handle hands without spaces to separate cards

[33mcommit b5e97e5949485e9665da279f74ae3a12a3bdae9a[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sun Dec 6 00:24:27 2009 -0800

    Use case statement for checking object type

[33mcommit 2464c826c0a327a111e43e4f8eaf59ef2fe02d51[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Nov 9 00:55:39 2009 -0800

    Removing lots of trailing whitespace

[33mcommit 3be835b607da028aad1c5f3420d93a044ca36a8b[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Mon Nov 9 00:38:55 2009 -0800

    Refactored #pair? to not use crazy regular expressions.
    
    Added real unit tests for PokerHand#pair?

[33mcommit ca2eeaee9d42ec68dc9147624426daf62a892e5d[m
Author: Jonathan Wilkins <jwilkins@jwilkins-mbp.local>
Date:   Wed Oct 28 02:05:51 2009 +0800

    handle 4 card hands for quads

[33mcommit d62b6191e95a527c3d10f7d04183727a0d435962[m
Author: Jonathan Wilkins <jwilkins@jwilkins-mbp.local>
Date:   Tue Oct 27 16:25:13 2009 +0800

    fix for 3 card hands

[33mcommit 656203400f3897b310c9d00a4125bd1df95de0bf[m
Author: Jonathan Wilkins <jwilkins@jwilkins-mbp.local>
Date:   Tue Oct 27 16:09:10 2009 +0800

    adding support for hands with less than 5 cards

[33mcommit fb476d03a3b528872ffc9d2a9c571d1ac155ba88[m
Author: Robert Olson <rob@thinkingdigitally.com>
Date:   Mon Jul 27 22:04:45 2009 -0700

    0.3.2 release hiccup. Gemspec fixed

[33mcommit 1be45b2986c20a405864e743705a0aa3ed7cabe0[m
Author: Robert Olson <rob@thinkingdigitally.com>
Date:   Mon Jul 27 21:54:11 2009 -0700

    Update gemspec for 0.3.2 release

[33mcommit bbef2cf062bcf58c160ca250986cefcf72e49827[m
Author: Robert Olson <rob@thinkingdigitally.com>
Date:   Mon Jul 27 21:41:52 2009 -0700

    version bump to 0.3.2

[33mcommit c8bc877890769af9674be05449da0b89eddd6c94[m
Author: Robert Olson <rob@thinkingdigitally.com>
Date:   Sun Jul 12 01:20:02 2009 -0700

    Reorganized ruby-poker's lib folder to match the standard layout for gems. This makes ruby-poker compatible with Rip.

[33mcommit 1979f176afea0c3334bff23718649eceb68f6667[m
Author: Rob Olson <rob@thinkingdigitally.com>
Date:   Sat Jul 4 13:24:46 2009 -0700

    Set the default Rakefile task to "test"

[33mcommit 2276c257d02d1ec491071487ec0680bce5f3ef1b[m
Author: Robert Olson <rob@thinkingdigitally.com>
Date:   Sun Jun 21 01:38:43 2009 -0700

    Rescind my decision to add a ! to the end of the
    shuffle method in Deck. http://is.gd/17QgF

[33mcommit 2596a4d90a99cee8f62c1fb014b98ff266fc2c5e[m
Author: Robert Olson <rob@thinkingdigitally.com>
Date:   Sun Jun 21 01:04:32 2009 -0700

    Bug [#26276] improper two_pair? behavior. Applied patch by Uro.

[33mcommit bcc1291a08470d51749db74ace7b79f6e54257b7[m
Author: Robert Olson <rob@thinkingdigitally.com>
Date:   Thu May 21 01:47:48 2009 -0700

    natural_value method for Cards

[33mcommit 5bef245faf9e98f1ff181ece098941b2f03f47bf[m
Author: Robert Olson <rob@thinkingdigitally.com>
Date:   Thu May 21 00:11:06 2009 -0700

    * Renamed Deck.shuffle to Deck.shuffle! in the sample Deck class * Changed protected methods in PokerHand to private

[33mcommit 5696de96449794578cf60c79a6e381c8796862d1[m
Author: Robert Olson <rko618@gmail.com>
Date:   Wed Mar 18 21:07:30 2009 -0700

    Added methods #size and #burn to the sample Deck class as submitted by Kai de Haan

[33mcommit 188aa981be71c8cf5c8ebf1a8c0691166d66fd95[m
Author: Robert Olson <rko618@gmail.com>
Date:   Wed Mar 18 20:49:30 2009 -0700

    documentation update

[33mcommit 0a262e667f158b4277365ac98236175ceb51b69d[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Feb 9 14:56:08 2009 -0800

    Documentation for how the score method works

[33mcommit 922cb3d18f41ce7aded88a91e8583f538ae037a8[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Jan 24 21:32:16 2009 -0800

    * Fixed [#23623] undefined method <=> for nil:NilClass
    * Bumped version number to 0.3.1

[33mcommit b581ae3584fcf1f465baf15f06556a811e5a4b4e[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Jan 24 16:40:12 2009 -0800

    Updating README.rdoc name in Rakefile

[33mcommit 85b50c268b6bc9dde6af33ffc73ee9dbd983127a[m
Author: Robert Olson <rko618@gmail.com>
Date:   Wed Dec 31 02:17:07 2008 -0700

    Accidentally fudged the Rakefile in the last commit

[33mcommit 86f9a014f628945bf2c5c4b8c03efb348b1ac485[m
Author: Robert Olson <rko618@gmail.com>
Date:   Wed Dec 31 02:14:17 2008 -0700

    Added ruby-poker.gemspec for GitHub

[33mcommit 9e0a0ed38800559ddc6df14dd60d5059743f64cb[m
Author: Robert Olson <rko618@gmail.com>
Date:   Tue Dec 30 22:19:53 2008 -0700

    Switch test_poker_hand unit tests to use Shoulda instead of test/unit

[33mcommit d847ed3c62cf78938cd6ad6d1e3649d58cf39180[m
Author: Robert Olson <rko618@gmail.com>
Date:   Tue Dec 30 20:41:38 2008 -0700

    * Fixed bug (#20407) Raise an exception when creating a new hand with duplicates
    * Added PokerHand#uniq method
    * Removed deprecated `Gem::manage_gems` from Rakefile

[33mcommit b5a0d50324aace02d5731eeae8211906ac41b7a2[m
Author: Robert Olson <rko618@gmail.com>
Date:   Fri Dec 26 22:32:30 2008 -0700

    adjustments to the README

[33mcommit 5d131ba3c3e47b67cafa6793d4e3690995a42cae[m
Author: Robert Olson <rko618@gmail.com>
Date:   Fri Jul 11 00:39:27 2008 -0700

    Added gitignore. Still have 1 failing test.

[33mcommit f5bde598cda4b5cbbbbb113bfc65f19c63911d55[m
Author: Robert Olson <rko618@gmail.com>
Date:   Fri Jul 11 00:22:19 2008 -0700

    * README maintenance

[33mcommit 004aa029763ddd156d5f231b7c73dcfabd63b85d[m
Author: Robert Olson <rko618@gmail.com>
Date:   Fri Jul 11 00:07:28 2008 -0700

    * Move README to README.rdoc for Github

[33mcommit 89035330da985c3b0c893966b66c88d6eadba0db[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jun 30 00:18:43 2008 +0000

    Changed the name of the doc task to the standard name

[33mcommit b54322a7a9781426af413fc633372dd9cd3b3857[m
Author: Robert Olson <rko618@gmail.com>
Date:   Wed May 28 08:34:04 2008 +0000

    Added a failing test for allowing duplicates

[33mcommit fa1dc8c70eccce13feaecb3061f3367f56e58f4c[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon May 26 08:19:09 2008 +0000

    Documentation update

[33mcommit 10aabf31c80699fb57a4beb2d19634220ef78c59[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon May 26 08:14:36 2008 +0000

    Filled out the sort_using_rank test method

[33mcommit 9a3be5048bb0d948ebf0d2d0549436e28857c440[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon May 26 07:01:41 2008 +0000

    [#20344] sort_using_rank does not return expected results

[33mcommit 70b61ae1fac441f83c20064daf6445a3fafb0ebf[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat May 24 08:09:35 2008 +0000

    Changed allow_duplicates to be true by default.

[33mcommit d239b630168d2e97ef0f08ebe07ce4a04853d380[m
Author: Robert Olson <rko618@gmail.com>
Date:   Thu May 22 08:36:17 2008 +0000

    [#20195] Allows the same card to be entered into the hand.

[33mcommit cababcf7203706e950791648aa4e20725227ca64[m
Author: Robert Olson <rko618@gmail.com>
Date:   Thu May 22 07:45:51 2008 +0000

    Progress towards 0.3.0 release. Changed the way Card does equality comparisons

[33mcommit 1133a31546de2b965b41f6662eedb39e27f6194d[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon May 19 22:28:24 2008 +0000

    Fix [#20196] 'rank' goes into an inifiant loop

[33mcommit 97dc675a261e4537019ae2ae4bc59cc6697c8a80[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat May 17 20:08:55 2008 +0000

    Replaced PokerHand#arranged_hand with PokerHand#sort_using_rank which is more descriptive. This loosely corresponds to bug #20194.

[33mcommit dca412f5876ef8e72256529349745d3d4a709aa0[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Apr 21 03:52:26 2008 +0000

    Fix for Ruby 1.9 compatability

[33mcommit b8258998ee6206c3e0bb5e65ffe8a3fbcca38835[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Apr 21 03:08:44 2008 +0000

    Begin work on 0.2.4. Moderized Rakefile

[33mcommit e49aa721f5555bca0ca3f42fdccd49a296e57310[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sun Apr 6 09:57:23 2008 +0000

    updated changelog for 0.2.2

[33mcommit 4219552f717b5af7ce1281e706ecd2ae3e0c0957[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sun Apr 6 09:54:42 2008 +0000

    Fixed bug where comparing two hands that were the same values, just different suits, returned not equal

[33mcommit 440914a43778632c8ede62e1eff2ecb575f6e9d2[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Mar 1 10:44:25 2008 +0000

    Slight update to Rakefile

[33mcommit 171227dfed414a71d66d0160ede0bd2723419967[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Feb 9 04:13:41 2008 +0000

    Cleaned up documentation a bit before release

[33mcommit 48d72e8f5ccdf970cdf3a7e4af8853ef6affa3ec[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Feb 9 04:04:52 2008 +0000

    svn:ignore doc folder

[33mcommit 999317b970a7dd52610556a25d1908a092020d2a[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Feb 9 03:57:43 2008 +0000

    Second part of 0.2.1 release. Added dynamic class_eval for PokerHand so it can pass methods like :size and + onto its @hand array

[33mcommit b1d7ee07b4cac362e97eb886b30563ea24f83cb7[m
Author: Robert Olson <rko618@gmail.com>
Date:   Thu Feb 7 23:39:52 2008 +0000

    Moving towards 0.2.1 added delete card and add card methods to poker hand

[33mcommit 3d3540174ee5f1efcf9d893034d9b3d6464d2d20[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jan 21 19:23:11 2008 +0000

    Added unit test for =~ on PokerHand

[33mcommit 92dc6b5821188b521d3cfbedf7a290c047ac7bf0[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jan 21 09:04:47 2008 +0000

    didn't really do anything

[33mcommit 655e24861dc9abc275f213ed9d432853d03e9237[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jan 21 08:51:56 2008 +0000

    Update version in Rakefile to 0.2.0

[33mcommit 0fa483376a1d4b177e8651e40e84cb507873922b[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jan 21 08:50:42 2008 +0000

    Couple touch-ups for the release

[33mcommit ccb630848b102a9015b06f913e3b00c4831c3947[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jan 21 08:44:46 2008 +0000

    0.2.0 checkin. Added unit tests

[33mcommit 2e9fb8dd9e4b4d79a26450010829de390b803f52[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jan 21 00:51:47 2008 +0000

    Merging Patrick Hurley branch with trunk

[33mcommit 739c2f1afeb6c9c0f6998ada81a79c209c5c49c3[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jan 14 20:55:44 2008 +0000

    Adjusting then statements for Ruby 1.9

[33mcommit 1a499ca37b567eb83545559293a3ad7f37f5585c[m
Author: Robert Olson <rko618@gmail.com>
Date:   Mon Jan 14 17:23:57 2008 +0000

    Allow Suits to be uppercase or lowercase

[33mcommit 7740ba927693ca048dc9b7efb287b9cfc08c7d1b[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Jan 12 09:16:06 2008 +0000

    Clean up for the 0.1.2 release

[33mcommit 31f70063c3debda201639ee88c06a1602a36c8f8[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Jan 12 09:11:54 2008 +0000

    The 0.1.1 release had a very large bug. Need tests to catch that type of thing

[33mcommit 51025b17845c4250b86538dddca2410a3e848aa9[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Jan 12 08:05:40 2008 +0000

    Last checkin for 0.1.1. Added ruby-poker.rb so that the rubygem will work. Renamed gemspec.rb to Rakefile

[33mcommit e6941f9eeb608d5cbdd81c4b855fa2fcbb45bd72[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Jan 12 06:58:04 2008 +0000

    Updated the gemspec to a rakefile. Renaming comes next.

[33mcommit 3e4ee32fbb761dcf4d2efdbb4036d5ef14eea857[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Jan 12 06:53:28 2008 +0000

    Decided I don't want the rdocs in the repo

[33mcommit 47f411761f1e069477a6de06422db1a88ce55ff5[m
Author: Robert Olson <rko618@gmail.com>
Date:   Sat Jan 12 06:04:15 2008 +0000

    Moved Rank, Card, and the extra array helpers to seperate file to cut down on the cruft in poker_hand.rb. Added file to generate the rubygem

[33mcommit acd0e6591b8e3cc7c5b6292744f09784a4dc009d[m
Author: Robert Olson <rko618@gmail.com>
Date:   Fri Jan 11 22:44:23 2008 +0000

    Added a Rank class. Check README for usage examples

[33mcommit 44ec85a5fe1599011296cb5e0f3c148226f0026d[m
Author: Robert Olson <rko618@gmail.com>
Date:   Thu Jan 10 22:09:56 2008 +0000

    Some updates in preparation for the 0.1.0 release. Moved readme to seperate file. Added a Changelog

[33mcommit 05af300c7afa7dab74c9bb3badc921739adde33b[m
Author: Robert Olson <rko618@gmail.com>
Date:   Thu Jan 10 21:37:09 2008 +0000

    Added example, removed rank for now, and modified poker hand to accept a string of the cards

[33mcommit 215dc19450b04e2982ad23fba1c290c457b1389e[m
Author: Robert Olson <rko618@gmail.com>
Date:   Thu Jan 10 11:27:49 2008 +0000

    Added Rank Module. Have not change poker_hand.rb to use it yet. Thats next

[33mcommit fde1829e20fd49d364153375392254d31bb4e074[m
Author: Robert Olson <rko618@gmail.com>
Date:   Thu Jan 10 11:20:07 2008 +0000

    Version 0.0.1: Poker hand evaluations for a 5 card hand

[33mcommit 4d95464fc9ff91f4eb849dc20feb7d586c7c431d[m
Author: Robert Olson <rko618@gmail.com>
Date:   Thu Jan 10 08:52:30 2008 +0000

    Initial directory structure
