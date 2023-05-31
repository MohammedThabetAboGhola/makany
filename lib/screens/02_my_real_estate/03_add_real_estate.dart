part of '00_real_estate_layout.dart';

class CancelableVerticalStepper extends StatefulWidget {
  final List<Step> steps;
  final VoidCallback? onCancel;
  final VoidCallback? onContinue;

  const CancelableVerticalStepper({
    Key? key,
    required this.steps,
    this.onCancel,
    this.onContinue,
  });

  @override
  _CancelableVerticalStepperState createState() => _CancelableVerticalStepperState();
}

class _CancelableVerticalStepperState extends State<CancelableVerticalStepper> {
  int _currentStep = 0;

  void _cancel() {
    if (widget.onCancel != null) {
      widget.onCancel!();
    }
    if (_currentStep != 0) {
      setState(() {
        _currentStep--;
      });
    }
  }

  void _continue() {
    if (widget.onContinue != null) {
      widget.onContinue!();
    }

    if (_currentStep != widget.steps.length - 1) {
      setState(() {
        _currentStep++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(automaticallyImplyLeading: false),
        Stepper(
          currentStep: _currentStep,
          onStepCancel: _cancel,
          onStepContinue: _continue,
          steps: widget.steps
              .map(
                (step) => Step(
                  title: step.title,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: double.maxFinite,
                      ),
                      step.content,
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
