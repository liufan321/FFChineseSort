# FFChineseSort

中文数组排序分类 & 汉字转拼音分类

## 语言

* Objective-C

## 安装

### CocoaPods

在终端输入以下命令安装 cocoapods

```bash
$ gem install cocoapods
```

* 在 `Podfile` 中添加以下内容

```
pod 'FFChineseSort'
```

* 如果还没有 Podfile，可以直接输入以下命令：

```bash
$ echo "pod 'FFChineseSort'" > Podfile
```

* 在终端之行以下命令安装 Pod

```bash
$ pod install
```

## 使用

### 排序数组

* 导入头文件

```objc
#import <NSArray+Chinese.h>
```

* 排序字符串数组

```objc
NSArray *strings = @[@"张三", @"李四", @"王五", @"赵六", @"安娜"];

NSArray *result = [strings sortedWithChineseKey:nil];
```

* 排序字典数组

```objc
NSMutableArray *arrayM = [NSMutableArray array];
NSDictionary *dict1 = @{@"name": @"张三", @"title": @"经理", @"age": @20, @"height": @1.7};
[arrayM addObject:dict1];
NSDictionary *dict2 = @{@"name": @"李四", @"title": @"老板", @"age": @18, @"height": @1.6};
[arrayM addObject:dict2];

NSArray *result = [arrayM sortedWithChineseKey:@"name"];
```

* 排序对象数组

```objc
Person *p = [Person personWithDict:@{@"name": @"张三", @"title": @"经理", @"age": @20, @"height": @1.7}];
[persons addObject:p];
p = [Person personWithDict:@{@"name": @"李四", @"title": @"老板", @"age": @18, @"height": @1.6}];
[persons addObject:p];

// 按照 name 排序
NSArray *result1 = [persons sortedWithChineseKey:@"name"];

// 按照 title 排序
NSArray *result2 = [persons sortedWithChineseKey:@"title"];

```


### 中文转拼音

* 导入头文件

```objc
#import <NSString+Chinese.h>
```

* 生成拼音字符串

```objc
NSLog(@"%@", @"张三".pinyinString);
NSLog(@"%@", @"重庆".pinyinString);
NSLog(@"%@", @"重量".pinyinString);
NSLog(@"%@", @"".pinyinString);
NSLog(@"%@", @"123456张三654abc".pinyinString);
NSLog(@"%@", @"😄张三😄".pinyinString);
```