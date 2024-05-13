import 'package:flutter/material.dart';
import 'package:investify/features/user_home/presentaion/progect_info.dart';

class AllDescription extends StatelessWidget {
  const AllDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ProgectInfoView()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: ListView(children: const [
          Text(
            'A well-prepared project plan not only serves as a roadmap for project execution but also brings about various advantages that contribute to a project’s all-around success.Better Risk Management: A carefully written project plan provides room for risk identification and mitigation strategies right from the inception. By visualizing risks earlier, you can frame proactive measures to tackle them effectively and minimize their impact on the project’s outcome. Increased Team Efficiency: A project plan outlines the roles and responsibilities of each team member, fostering clarity on what exactly is expected of them. This not only boosts individual productivity but also makes the team more cohesive and efficient.Effective Resource Allocation and Cost Control: With a concrete project plan at hand, project managers can optimize resource allocation, minimizing wastages and ensuring that costs stay within the budget limit. It serves as a reference point for financial management, allowing managers to track and control expenses effectively.High Client Satisfaction: A project plan structures the path to desired results, thereby enhancing the quality of the final deliverables. When clients receive value-driven results within the established time frame, they are more likely to be satisfied, leading',
            style: TextStyle(fontSize: 20, fontFamily: 'dongel'),
          ),
        ]),
      ),
    );
  }
}
