function test_suite=rectifiedCubic_moxunit_test()
    initTestSuite
end

function test_rectifiedCubic_main()
    assert(isequal(8, rectifiedCubic(2)))
    assert(isequal(0, rectifiedCubic(-2)))
    assert(isequal(27, rectifiedCubic(3)))
    assertExceptionThrown(rectifiedCubic('string'));
end

function test_rectifiedCubic_fails()
    % This is ok
    assert(isequal(27, rectifiedCubic(3)))
    % This is not and should fail
    assert(isequal(27, rectifiedCubic(-3)))
    % This is ok
    assert(isequal(1, rectifiedCubic(1)))
    % This is not and should fail
    assert(isequal(1, rectifiedCubic(-1)))
end

function test_rectifiedCubic_skips()
    % This is ok
    assert(isequal(27, rectifiedCubic(3)))
    % This is not and should fail
    moxunit_throw_test_skipped_exception('hmm this shouldnt work');
    assert(isequal(27, rectifiedCubic(-3)))
    % This is ok
    assert(isequal(1, rectifiedCubic(1)))
    % This is not and should fail
    moxunit_throw_test_skipped_exception('hmm nor should this');
    assert(isequal(1, rectifiedCubic(-1)))
end