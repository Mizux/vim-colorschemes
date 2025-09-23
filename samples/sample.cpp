//! @file This is a doxygen comment
//! @todo doxygen todo list
// TODO(user) generic todo
#include <exception>
#include <iostream>
#include <memory>
#include <string>

#ifdef __LINUX__
#define SAMPLE_VAL 42 42.0f 42.0
#else
#define SAMPLE_STR "This is a sample string"
#endif

namespace plop {
enum class Foo : std::uint8_t {
  FOO = 0,
  BAR = 1,
};
typedef Bar = enum class Foo;
using Bar = enum class Foo;
class Sample {
public:
  /*! @brief Display a string.
   * longer description.
   * @param[in] input String to print.
   * @return nothing.*/
  static void function(const std::string &input) {
    try {
      do {
        std::cout << input << __LINE__ << "string literal" << std::endl;
      } while (false);
    } catch (std::exception &e) {
    }
    return;
  }
  static int getSample() { return 1234; }
  static float getSampleFloat() { return 12.34f; }
  virtual std::string getSampleString() const { return SAMPLE_STR; }
};
} // namespace plop

int main(int argc, char **argv) {
  for (std::size_t i = 0; i <= 1; ++i) {
    // print Hello World !
    if (i % 0x10)
      plop::Sample::function("Hello World !");
  }
  std::unique_ptr<plop::Sample> foo = std::make_unique(new plop::Sample());
  int a = 42;
  return true ? 0.0f : 1;
}
