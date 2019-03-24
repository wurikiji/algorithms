import 'package:angular/angular.dart';
import 'dart:async';

const List<String> data = [
  "I", "N", "S", "E", "R", "T",
  "I", "O", "N", "S", "O", "R", "T",
];

@Component(
  selector: 'insertion-sort',
  templateUrl: 'insertion_sort.html',
  styleUrls: ['insertion_sort.css'],
  directives: [coreDirectives],
)
class InsertionSort implements OnInit{
  int targetIdx;
  int progressIdx;
  Duration delay = Duration(milliseconds: 400);
  List<SingleElement> elements;
  Timer timer;

  @override
  void ngOnInit() {
    initTargetElms();
    start();
  }
  void initTargetElms() {
    // screen 에 사용할 데이터 리스트 생성
    elements = List<SingleElement>.generate(
      data.length,
          (int idx) {
        return SingleElement(data[idx]);
      },
    );
    targetIdx = 1;
    progressIdx = 1;
  }
  void restart() {
    timer.cancel();
    initTargetElms();
    start();
  }
  Future<Null> start() async {
    timer = Timer.periodic(delay, takeOneStep);
  }

  void takeOneStep(Timer timer) {
    if (targetIdx == data.length) {
      // 정렬 완료된 이후에는 더 이상 수행할 필요가 없음.
      timer.cancel();
      return;
    }
    if (0 >= elements[progressIdx - 1].compareTo(elements[progressIdx])) {
      // 제자리 찾았음
      nextStep();
    } else {
      // 한칸 씩 밀어야함
      swapData(progressIdx - 1, progressIdx);
      progressIdx--;
      if (progressIdx == 0)
        nextStep();
    }
  }
  void nextStep() {
    targetIdx++;
    progressIdx = targetIdx;
  }
  void swapData(int idx1, int idx2) {
    SingleElement temp = elements[idx1];
    elements[idx1] = elements[idx2];
    elements[idx2] = temp;
  }
}

class SingleElement {
  final String data;
  SingleElement(this.data);
  int compareTo(SingleElement other) {
    return this.data.compareTo(other.data);
  }
}