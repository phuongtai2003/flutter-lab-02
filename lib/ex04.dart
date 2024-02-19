import 'package:flutter/material.dart';

class Exercise04 extends StatefulWidget {
  const Exercise04({super.key});

  @override
  State<Exercise04> createState() => _Exercise04State();
}

class _Exercise04State extends State<Exercise04> {
  double _currentHeight = 160;
  int _currentWeight = 60;
  int _currentAge = 28;
  int _currentGender = 0;
  String _bmiResult = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: _currentGender == 0
                          ? const Color.fromARGB(255, 53, 53, 53)
                          : const Color.fromARGB(255, 94, 94, 94),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _currentGender = 0;
                          });
                        },
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              'FEMALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: _currentGender == 1
                          ? const Color.fromARGB(255, 53, 53, 53)
                          : const Color.fromARGB(255, 94, 94, 94),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _currentGender = 1;
                          });
                        },
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              'MALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 94, 94, 94),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'HEIGHT $_currentHeight',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        overlayColor: Colors.green.withOpacity(0.1),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                      ),
                      child: Slider(
                        value: _currentHeight,
                        thumbColor: Colors.green,
                        max: 200,
                        min: 100,
                        divisions: 100,
                        onChanged: (value) {
                          setState(() {
                            _currentHeight = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 94, 94, 94),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'WEIGHT $_currentWeight',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Material(
                                color: Colors.grey,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(80),
                                ),
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(80),
                                  ),
                                  onTap: () {
                                    if (_currentWeight > 10) {
                                      setState(() {
                                        _currentWeight--;
                                      });
                                    }
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Material(
                                color: Colors.grey,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(80),
                                ),
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(80),
                                  ),
                                  onTap: () {
                                    if (_currentWeight < 200) {
                                      setState(() {
                                        _currentWeight++;
                                      });
                                    }
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_upward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 94, 94, 94),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'AGE $_currentAge',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Material(
                                color: Colors.grey,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(80),
                                ),
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(80),
                                  ),
                                  onTap: () {
                                    if (_currentAge > 0) {
                                      setState(() {
                                        _currentAge--;
                                      });
                                    }
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Material(
                                color: Colors.grey,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(80),
                                ),
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(80),
                                  ),
                                  onTap: () {
                                    if (_currentAge < 100) {
                                      setState(() {
                                        _currentAge++;
                                      });
                                    }
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_upward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 94, 94, 94),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          setState(() {
                            _currentHeight = 160;
                            _currentWeight = 60;
                            _currentAge = 28;
                            _currentGender = 0;
                          });
                        },
                        child: const Center(
                          child: Text(
                            'CLEAR',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          //calculate bmi for me
                          double heightInMeters = _currentHeight / 100;
                          double bmi = _currentWeight /
                              (heightInMeters * heightInMeters);
                          setState(() {
                            _bmiResult = 'BMI: ${bmi.toString()}';
                          });
                        },
                        child: const Center(
                          child: Text(
                            'GET BMI',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 94, 94, 94),
                ),
                child: Center(
                  child: Text(
                    _bmiResult,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
