import 'package:flutter/material.dart';
import 'colors.dart';
import 'bottomnavigator.dart';

class Paybutton extends StatefulWidget {
  const Paybutton({super.key});

  @override
  State<Paybutton> createState() => _PaybuttonState();
}

class _PaybuttonState extends State<Paybutton> {
    int _selectedIndex = 0;
    void _onItemTapped(int index){
      _selectedIndex = index;
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.body,
      appBar: AppBar(
        title: const Center(
          child: Row(
            children: [
              Text(
                'Payment Mode',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 20,
                  )),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
        backgroundColor: MainColors.appbar,
        elevation: 8.0,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 290, top: 100),
                child: Row(
                  children: [
                    Container(
                      height: 110,
                      width: 210,
                      color: MainColors.appbar,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(80)),
                        color: MainColors.body,
                      ),
                      height: 120,
                      width: 500,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(80)),
                      color: MainColors.appbar,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 100,right: 50,bottom:10 ,),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Text('Secure Payment',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              Row(
                                children: [
                                  const Text('Pay with Your Trust',style: TextStyle(color: Colors.white,),)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 0,
              left: 30,
              right: 30,
            ),
            child: Row(
              children: [
                
                Column(
                  children: [
                    Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.black),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'data:image/png;base64,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'),),
                                  shape: BoxShape.circle,
                        ),),
                        SizedBox(
                        height: 10,
                      ),
                        Text('Net Banking',style: TextStyle(color: Colors.white,fontSize: 16,),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABJlBMVEX///9Sn/tjr/r0vF9iZoH3zG2CyPtNVHHgqVhjsv9OnftiZH1ysfz8SjLiPi1Xo/tif6r4vFhSo/9brv9fqvu2tq31wmTpsltQYorkqVBtt/p1vfqqrKnAt6b3ymW4m3RaYYJdbI2ozPzCwK36vVV8w/uzrKOFy/v636emtbz9zmT98Nb40n/++/T+9ubepU/86cX5g0igdKKarMX416X3zoz1wWv64Lb64rH51o7525tAmPv76cJrpuh+jdP+RiCZgrp7p92KhcXoNgb3lk/vRC/rNADOtY+4Zob98tz30JP404Lx1rH2xnfou3Kfp7XA2/3p8f6OvvzU5v6cxvzVuYfJuJ67pIRgmOrlOhyuiaT/QijPfIC2dJqKqdKtpqW7p5Diojt5EzXEAAAIvUlEQVR4nO3d/3/SRhgHcGgGq5ktQrEdraJWKrU0ES30i9RpV7/Rb7rOL3Nuc/7//8SOhMBd7i655wi5lD2fn/MqefM8ubtcMOZyGAwGg8FgMBgMBoPBYDAYDAaDwWAwGAwGg8FgMBgM5krEaXd2GyTl7p5j+lySj+PudcvlsuWnXO72TZ9RonHbJ7sjXYA8MX1WiaXV4XQ+cXcWWpVpTT6u6fObLE6/cx6h83KFq+geHizH8Uijdk2fp16c1mahvhyn84lt0ycLDpkUDur1ekENaFm7pk8YFqf9dJvoSBR9pIgt0yetnv7+dsHnAYCWdUVmRTKu1AMdiWqLekU0fe7xIePKNs2DATPfpqR4BUYH7FEi7Jg2yEPGFV4HLaFlLZt2iOP090+3RDxoCUkRM7iucSXF0yph9iZ9blyZsISWlaWVm7t3Gq3TEmZlWSMbVyZtUtKmWbjbJ+OKEk9PuGdY57YFU16SQqMXoncfBODpCY3NF+4+qHgTCE0s3Mb3QWkIU1+4kfsgYGtOJkx14eb0O93l8vIEsVbgqaU1X7jtrhW/exSXeXgenaXBk+3bpiGcn5+2zt07byTDI1nRKeI05wu3fWI1ktJpC6c2X7QGu9JJ8gbREU5lP8ptn1PjSjm51DSykrTOaXXo1mxYFx9v30wqt0B5925nkHUm73+biBd+HtS4uHU0t2Qi1YotTq9Xuvxdk9fa3y4wF17Z2plbujZnINV8VOzedXghh/u2zLqq8WZuyQQvxucb12HF2wyW0gzwphnfXCkWSNK7VPcdUncKNPC2IWBFBUiI11Xbc7suXPyX3xgCqvkGxA9KwDZzJ0SVcHfVyBCjDiRElSH1kL3Vo3r0oZkSKl2Dw9jVeGArdC9LldBMBeNHUaaI7+OATvgmfHwVGhpHFUeZoIixg81T6bOvxlEGJ3pBEWOALrffYrpJIVehJ4xp002psPzRTJMCgXk7ZmXDb5mNhJ+MCKFNmrejFzb9CKGZ9Qy0SeOGmvbMC/nL0LQQCowTcnPF/0t4zUQq0OT1u/TzDRP5GZwbkcKokebO3Z8M5Edw7kUK+SUNLfzBQJIWRs34MyLkh5pZE/IX4qwJnYwJ7yYuzJ1mSwgHxgq5GXHmhOFtmtkTSvdpZkaYO5h54aFkN9GIUGMojReGF25GhRrAeGEuS106HeFT8a7+DAnb2RFq3DupCJ3sCHWACsLQws3kHfC0hPvC54cGdjHuwbcwYncxvPTFwvR3okrgbaj4nSj/QhR3afq7ieCdRIXdRD8H9UwIwdvd6sJ2NoRaQDWhmwkh+KkTQJjbzoIQ9nQbKKRv9E0JNUuoKGxlQKhZQkVhzrxQt4SqwgMl4SokQKEuUFVI3ehLhatFWNZSKaGq0OWEy/X7rHCtCRQWN9IooaqQmi+GwEJICK0gjMgsZ+yqHVJU/pCPQ6rC8Y3+EBgWagCLRdWLkenR3sPCsx4LfPH8FylRVdhmhYWwUKeE6kVkgVt1lkiAC3KiqtApRAvXtIRFNSDdowRIPpsmDoALcqKqcHyjn76Q7lEPSD58e0T0gSQSorJwdKOfepcKgF4VbRYoIyoL+9HCKY40IuDgnyEd2SxQ0qjKwhwj5MdSrTZVAVYEQP/X9IRIAxcWvvwqIKoLgxt9a1jE8Iy/MZ0SlgTAYNVxxAJfLYqI6sI2I7Q4IbiKShehEDhaV/1JA4lw8ZgnqgudLeavW5yQDDdrgChdg2JgsK56yQAXFhdFRHVhsHBL8+5JAhyOBS8XFjgh36gA4WY9bSEM+GpRSAQIW2kLZcBlH/hVVEK+UQFCJ+UupYA2DfTPIFzBoIQcESAc3uinJWTqcH+LraBlPZYCF18/0RXu1dMThu7pe/eZuX7QpY9lwOMnul06vNFPRcht4A+I7EtBaCLlW/zyRHukGT7RT0G4JFh8EaJlCYg0TlBBoNC70Z++UPwExv7U4IhfOeDrMBAmbKUhlO6q9d6EieW/nsdVECh0pi9ciniEZoeIjZ3K38cMMHwNgoXewm2qwphHhAyxsUPunhiioIJQ4eBGf4rC+EegFLGxM9jHqLw9jgYChf0pCqsqj3jHjeoDaaKoRcHC3LS6dEl11z4gBsAxUQKECsl8kbxwqQp5cuYRx8CAyE8TesLDpIVVpeZkzpgQaaBPFF+DGkI3QSHBaf26ghB3Qrv6b6UVBAvJfCEUDs4WEt0Hul5K/4SfzORFm2yaws06LwQ32qThgPmIbwwqbHFC0TI5S4EKnXGXPvCE+g9nUwpUmDsNhDVPmHaDwgMW7g3fEjXvCbMPhAtdXzjvCTPfonkNYc5bNa34QtNnrxK4sOuXcCAU9KidF01/duwhlfhD2EnCrsQeoiscXIgrvlDwja0WBT86aRbnqI8WPsFpblA/sCgJf7nS3Bh/o3Z1Q3jIGv+lw4Vuw395Y+2B4K/JflTTHBNlT+Gao4u6JDmiWBx9YlX2452NBIS5Xf8FnLUHfEtIP7hYDD5vTnrIxvDv2fIn5mvBIdKHlc3V8FlpCE/KMmHEuRWrQZWlRzTjqjyukLzKo+9pEmGr7L0ztPYtaWGw/Is4/XSEriUT5uUtWKwEX0J8l8q/hJS6NHcuFcqHkdEHS7/+5mh2rUoPGQ1G8gueG/50hJ1HspEmX5EMptQ3WxKO80V6QpFMBcXxhGKLf91CTyijQwGvhwzSkgvzdqkqCDMT6x7Crhvyoj9SEs34sHd8+ql5bye+IxJmL/Ev3RPkwr8QTZ+7Wno67xQ+89uU3y7JYFReDcnH8dv081UQAl+1G+TEL+KzK0AsaQGDIl6BsUZrnBlkeCW+yzpRZ7ofpusTj7JNtDV71MvFFSDapYnePt8NpozMGpXfdS3L2aOBsfZvNZNGu5fXmyfoOJ0aMdbmvz2ze5JX+BtLr7o+2f+PEBjPLr7Xat+/zz9cv7yenVx+SIaHwWAwGAwGg8FgMBgMBoPBYDAYDAaDwWAwGAwGg8HMfP4DG6k+L/FTnpwAAAAASUVORK5CYII=')),
                                  shape: BoxShape.circle,
                        )),
                        SizedBox(
                        height: 10,
                      ),
                        Text('Debit/Credit Cards',style: TextStyle(color: Colors.white,fontSize: 16,),)
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 0,
              left: 30,
              right: 30,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'data:image/png;base64,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'),
                                  
                                  ),
                                  shape: BoxShape.circle,
                        )),
                        SizedBox(
                        height: 10,
                      ),
                        Text('Phone Pe',style: TextStyle(color: Colors.white,fontSize: 16,),)
                  ],
                ),
                Column(
                  children: <Widget> [
                    Container(
                        height: 110,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://play-lh.googleusercontent.com/HArtbyi53u0jnqhnnxkQnMx9dHOERNcprZyKnInd2nrfM7Wd9ivMNTiz7IJP6-mSpwk'),
                                
                                ),
                                shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('UPI',style: TextStyle(color: Colors.white,fontSize: 16,),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
