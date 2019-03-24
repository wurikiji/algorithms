import 'package:angular/angular.dart';
import 'src/insertion_sort.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [InsertionSort],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
