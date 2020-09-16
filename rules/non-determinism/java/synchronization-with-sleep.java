// rule-id: synchronization-with-sleep
Thread.sleep(10*1000);

public void Test()
{
    var sut = new SomeService();

    sut.FirePeriodicJob();

    // Give the job time to complete
    // rule-id: synchronization-with-sleep
    Thread.Sleep(10000);

    /* Verify the effects of the job */
}

public void Test()
{
    var sut = new SomeService();

    sut.FirePeriodicJob();

    // Give the job time to complete
    // rule-id: synchronization-with-sleep
    Task.Delay(10000).Wait();

    /* Verify the effects of the job */
}
