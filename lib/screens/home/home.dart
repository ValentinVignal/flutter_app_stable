import 'package:flutter/material.dart';
import 'package:flutter_app_stable/screens/home/top_bar.dart';
import 'package:flutter_app_stable/theme/theme.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: _Drawer(),
          ),
          Expanded(
            flex: 16,
            child: Column(
              children: [
                TopBar(),
                Expanded(
                  child: _Body(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Drawer extends StatelessWidget {
  const _Drawer();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ColoredBox(
      color: Theme.of(context).drawerTheme.backgroundColor!,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SvgPicture.asset(
                    'assets/pru_force_logo.svg',
                    height: 43,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: NavigationDrawer(
              children: [
                const NavigationDrawerDestination(
                  icon: Icon(Icons.home_outlined),
                  label: Text('Home'),
                ),
                const NavigationDrawerDestination(
                  icon: Icon(Icons.emoji_people),
                  label: Expanded(child: Text('Customers')),
                ),
                const NavigationDrawerDestination(
                  icon: Icon(Icons.trending_up),
                  label: Text('Sales'),
                ),
                const NavigationDrawerDestination(
                  icon: Icon(Icons.person_add_outlined),
                  label: Expanded(child: Text('Recruitment')),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Reference',
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                const NavigationDrawerDestination(
                  icon: Icon(Icons.file_open_outlined),
                  label: Expanded(
                    child: Text('Shareable content'),
                  ),
                ),
                const NavigationDrawerDestination(
                  icon: Icon(Icons.local_police_outlined),
                  label: Text('Training'),
                ),
                const NavigationDrawerDestination(
                  icon: Icon(Icons.volunteer_activism_outlined),
                  label: Text('Services'),
                ),
              ],
              onDestinationSelected: (_) {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Support'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

const _actions = <(String, int)>[
  ('Document approval', 15),
  ('Interview schedule approval', 4),
  ('Interview assessment form', 2),
  ('Exam schedule approval', 12),
  ('Agency agreement approval', 3),
  ('Coding', 18),
];
const _dropoffs = <(String, int)>[
  ('Application in progress', 4),
  ('Account created', 3),
  ('Exam complete', 2),
];

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        const SizedBox(height: 40),
        Row(
          children: [
            Expanded(
              child: Text(
                'Home',
                style: theme.textTheme.titleMedium,
              ),
            ),
            SegmentedButton<bool>(
              onSelectionChanged: (_) {},
              segments: const [
                ButtonSegment(
                  label: Text('Analytics'),
                  value: true,
                ),
                ButtonSegment(
                  label: Text('Kanban'),
                  value: false,
                ),
              ],
              selected: const {true},
            ),
          ],
        ),
        const SizedBox(height: 40),
        StaggeredGrid.count(
          crossAxisCount: 10,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 6,
              mainAxisCellCount: 3,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Candidates in funnel',
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            child: SvgPicture.asset(
                              'assets/graph.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 3,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(10),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(2),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          children: [
                            TableCell(
                              child: Text(
                                'Candidates awaiting action',
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            const TableCell(
                              child: SizedBox(),
                            ),
                            TableCell(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz),
                              ),
                            ),
                          ],
                        ),
                        ..._actions.map(
                          (action) => TableRow(
                            children: [
                              TableCell(
                                child: Text(action.$1),
                              ),
                              TableCell(
                                child: Text(action.$2.toString(),
                                    style: const TextStyle()),
                              ),
                              TableCell(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text('New candidates'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      const Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Text('500')),
                            Expanded(child: Text('323')),
                            Expanded(child: Text('177')),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Expanded(child: Text('Total')),
                          Expanded(child: Text('New')),
                          Expanded(child: Text('Invited')),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.trending_up,
                                    size: 12,
                                    color: increaseColor,
                                  ),
                                  Text(
                                    '+5%',
                                    style: TextStyle(color: increaseColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.trending_down,
                                  size: 12,
                                  color: decreaseColor,
                                ),
                                Text(
                                  '-2%',
                                  style: TextStyle(color: decreaseColor),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.trending_up,
                                  size: 12,
                                  color: increaseColor,
                                ),
                                Text(
                                  '+6%',
                                  style: TextStyle(color: increaseColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text('Active Candidates'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      const Expanded(child: Text('352')),
                      const Text('Total'),
                      const Row(
                        children: [
                          Icon(
                            Icons.trending_up,
                            size: 12,
                            color: increaseColor,
                          ),
                          Text(
                            '+5%',
                            style: TextStyle(color: increaseColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text('Avg time to completion'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      const Expanded(
                        child: Text('12'),
                      ),
                      const Text('Days'),
                      const Row(
                        children: [
                          Icon(
                            Icons.trending_up,
                            size: 12,
                            color: increaseColor,
                          ),
                          Text(
                            '+5%',
                            style: TextStyle(color: increaseColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text('Exam pass rate'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      const Expanded(
                        child: Text('88'),
                      ),
                      const Text('Percent'),
                      const Row(
                        children: [
                          Icon(
                            Icons.trending_up,
                            size: 12,
                            color: increaseColor,
                          ),
                          Text(
                            '+5%',
                            style: TextStyle(color: increaseColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text('New candidates by lead source'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      Expanded(
                        child: SvgPicture.asset('assets/pie_chart.svg'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 3,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text('Active candidates by status'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      Expanded(
                        child: SvgPicture.asset('assets/chart.svg'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Text('Unresponsive'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '13 ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: 'Candidates',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Avg 4 days  ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: 'unresponsive time',
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.trending_up, color: decreaseColor),
                                  Text(
                                    '+5%',
                                    style: TextStyle(color: decreaseColor),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.trending_down,
                                      color: increaseColor),
                                  Text(
                                    '-5%',
                                    style: TextStyle(color: increaseColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(10),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(2),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          children: [
                            const TableCell(
                              child: Text('Top 3 dropoff points'),
                            ),
                            const TableCell(
                              child: SizedBox(),
                            ),
                            TableCell(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz),
                              ),
                            ),
                          ],
                        ),
                        ..._dropoffs.map(
                          (action) => TableRow(
                            children: [
                              TableCell(
                                child: Text(action.$1),
                              ),
                              TableCell(
                                child: Text(action.$2.toString()),
                              ),
                              TableCell(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
