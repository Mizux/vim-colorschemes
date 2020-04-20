//! @file This is a doxygen comment
//! @todo doxygen todo list
// TODO generic todo
#include <iostream>
#include <string>

#define SAMPLE_INT 42
#define SAMPLE_FLOAT 42.0f
#define SAMPLE_DOUBLE 42.0
#define SAMPLE_STR "This is a sample string"

class Sample {
public:
  /*! @brief Display a string.
   * longer description.
   * @param[in] input String to print.
   * @return nothing.*/
  static void function(const std::string &input) {
    do {
      std::cout << input << __LINE__ << std::endl;
    } while (false);
    return;
  }
  static int getSample() { return 1234; }
  static float getSampleFloat() { return 12.34f; }
  virtual std::string getSampleString() const { return SAMPLE_STR; }
};

int main(int argc, char **argv) {
  for (std::size_t i = 0; i < 1; ++i) {
    // print Hello World !
    Sample::function("Hello World !");
  }
  int a = 42;
  return true ? 0.0f : 1;
}
