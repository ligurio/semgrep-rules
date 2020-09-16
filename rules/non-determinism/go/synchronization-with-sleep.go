go longOperation.Start()

// rule-id: synchronization-with-sleep
time.Sleep(5 * time.Second)

if !longOperation.IsDone() {
  t.Fatal("didn't see result in time")
}

res := longOperation.Result()
if res != expected {
  t.Fatalf("expected %v, got %v", expected, res)
}


go longOperation.Start()

// rule-id: synchronization-with-sleep
ctx, cancel := context.WithTimeout(context.Background(), 5 * time.Second)
defer cancel()

res, err := longOperation.WaitForResult(ctx)
if err != nil {
  t.Fatal(err)
}
if res != expected {
  t.Fatalf("expected %v, got %v", expected, res)
}
