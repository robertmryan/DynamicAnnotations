#  Dynamic Annotations

This demonstrates the need for `dynamic` keyword for annotation views to reflect changes in annotations.
This will add three annotations, and move them 2 seconds later. The `DynamicAnnotation` (custom 
annotation with `dynamic` qualifier) and the `PointAnnotationSubclass` (a subclass of `MKPointAnnotation`
which also does this for you), but the `StaticAnnotation` does not automatically move for you.

https://stackoverflow.com/a/44232904/1271826.

---

1 December 2021

Copyright © 2021 Robert M. Ryan. All Rights Reserved.

See [License](LICENSE.md).
