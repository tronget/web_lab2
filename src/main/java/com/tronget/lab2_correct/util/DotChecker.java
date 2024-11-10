package com.tronget.lab2_correct.util;

import com.tronget.lab2_correct.model.Dot;

public class DotChecker {
  public static boolean check(Dot dot) {
    double x = dot.getX();
    double y = dot.getY();
    double r = dot.getR();
    return checkCircle(r, x, y) || checkTriangle(r, x, y) || checkSquare(r, x, y);
  }

  private static boolean checkTriangle(double r, double x, double y) {
    if (x >= 0 && x <= r && y >= 0 && y <= r / 2) {
      if (x == r) {
        return y == 0;
      }
      double xLength = r - x;
      double tan = y / xLength;
      return tan <= 0.5;
    }
    return false;
  }

  private static boolean checkCircle(double r, double x, double y) {
    return x >= -r / 2 && x <= 0 && y >= -r / 2 && y <= 0 && Math.sqrt(x * x + y * y) <= r / 2;
  }

  private static boolean checkSquare(double r, double x, double y) {
    return x <= r && x >= 0 && y <= 0 && y >= -r;
  }
}
