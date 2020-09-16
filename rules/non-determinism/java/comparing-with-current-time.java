public void Test()
{
    var sut = new CustomerService();

    Customer customer = sut.Create("Name");

    // rule-id: comparing-with-current-time
    Assert.Equal(DateTime.Now, customer.DateCreated);
}

public void Test()
{
    DateTime now = DateTime.Now;
    var sut = new CustomerService();

    Customer customer = sut.Create("Name", now);

    // rule-id: comparing-with-current-time
    Assert.Equal(now, customer.DateCreated);
}
