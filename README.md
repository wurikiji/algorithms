# Algorithms

> [The Algorithm Design Manual](https://books.google.co.kr/books/about/The_Algorithm_Design_Manual.html?id=7XUSn0IKQEgC&source=kp_cover&redir_esc=y) 리뷰 및 정리
>
> 언제 완성될지는 아무도 모름, 지나가던 개발자들의 자유 참여 매우 환영

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [1. 알고리즘 소개](#1-%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98-%EC%86%8C%EA%B0%9C)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## 1. 알고리즘 소개

알고리즘이란 무엇일까? 알고리즘이란 특정한 작업의 목적을 달성하기 위한 일련의 절차를 의미한다. 컴퓨터 프로그램에서는 해당 프로그램을 구성하는 절차적 요소들을 알고리즘이라고 할 수 있다.

모든 절차적 요소를 알고리즘이라고 부르는 것은 아니며, 제대로 정의가 되어있는 일반적인 문제를 푸는데 사용되는 것을 알고리즘이라고 한다. 알고리즘상의 문제들은 해당 알고리즘이 정상적으로 동작하는 사례들과 해당 사례들에 알고리즘을 적용했을 때 도출되는 결과물들의 전체 집합으로 정의된다. 문제와 문제에 대한 사례를 구분지어 생각하는것은 알고리즘 문제의 근본이다. 예를들어 정렬 (*sorting*) 으로 정의된 알고리즘상의 문제를 알아보자.

> 문제: 정렬 (*sorting*)
>
> 입력 (적용 대상): a~i~ 부터 a~n~ 까지 총 n개의 배열
>
> 출력 (결과): a'~1~ ≤ a'~2~ ≤ ... ≤ a'~n~ 을 성립하는 입력 배열의 치환 배열 (요소는 동일하고 순서가 재정의된 배열)

정렬 문제의 사례는 일련의 이름 배열 (`{Mike, Bob, Sally, Jill}`) 이 될 수도 있고, 일련의 수열 (`{154, 245, 568, 324, 654, 324}`) 가 될 수도 있다. 어떠한 문제가 주어졌을 때, 해당 문제가 어떤 일반적인 경우의 문제의 사례가 되는지 결정하는 것이, 그 문제를 풀기위한 알고리즘을 찾는 첫걸음이다.

