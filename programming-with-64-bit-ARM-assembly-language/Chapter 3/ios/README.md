# iOS

:x: I was able to the iOS example only by using iOS Target 13.x which is no longer available for iPhone 5s

- [x] Create a project using the below setup.
- [x] Add a new `Assembly File` called `HelloWorld`
- [x] Add the `start` function in `ViewController.m` file

```objectivec
extern void start( void );

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    start();
}
```


![image](images/XCode-Project.png)
