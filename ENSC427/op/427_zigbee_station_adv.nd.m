MIL_3_Tfile_Hdr_ 140A 140A modeler 6 45D632FF 4BA92527 5A payette danh 0 0 none none 0 0 none A21FE466 3B59 0 0 0 0 0 0 18a9 3                                                                                                                                                                                                                                                                                                                                                                                                  ��g�      8   Z    �  �  Q  2     &�  &�  9E  9I      node   ZigBee   Advanced   zigbee_adv_node   zigbee_adv_node������������   zigbee_support����   zigbee_object_menu_define   zigbee_menu_choose_handler��������������������    ������������   @   General Node Functions:       -----------------------       The Zigbee_Device node model     represents a generic ZigBee WPAN   device.  The node model can be   $configured as a coordinator, router,   or end device.               Supported Protocols: <None>               Attributes:       -----------       "Device Type:  Configure the device   #as a ZigBee Coordinator, Router, or   End Device.       Transmission Bands:  Determines   "which frequency bands the node can   operate on (868 MHz, 915 MHz,   
2450 MHz).       Transmit Power:  Promoted from    wireless transmitter.       PAN ID:  Specifies which ZigBee   "network the device will form (if a   coordinator) or join.        Network Settings:  Beacon Order,   "Superframe Order, Maximum Routers,    Maximum Children, Maximum Depth,   Beacon Enabled Network.  These    !attributes configure the behavior   of the ZigBee network.       )Application Traffic:  Destination, Packet   +Interarrival Time, Packet Size, Start Time,   &Stop Time.  These attributes configure   &the application traffic the node will    	generate.        MAC Parameters:  Maximum Backoff   !Exponent, Maximum Backoff Number,    Minimum Backoff Exponent, Number   of Transmission Retries.  These   $attributes configure the behavior of   the MAC's CSMA/CA scheme.                   <<Summary>>       General Function: WPAN Device       Supported Protocols: <None>             .ZigBee Parameters.MAC ParametersACK Mechanism      802_15_4_mac.ACK Mechanism����   ����                                             count    �������    ����         ����          ����          ����           �Z             list   	�������   	����                                              �Z                       3ZigBee Parameters.MAC ParametersCSMA-CA Parameters      '802_15_4_mac.csma_ca.CSMA-CA Parameters����   ����                                             count    �������    ����         ����          ����          ����           �Z             list   	�������   	����                                              �Z                       9ZigBee Parameters.MAC ParametersChannel Sensing Duration      %802_15_4_mac.Channel Sensing Duration����   ����               ����              ����              ����                         5ZigBee Parameters.Physical Layer ParametersData Rate      802_15_4_mac.Data Rate����    ����           ����          ����          ����                        Application TrafficDestination      app_layer.Traffic Destination����   ����       ����      ����      ����                         ZigBee ParametersDevice Type      network_layer.Device Type����    ����           ����          ����          ����                        $ZigBee ParametersNetwork Parameters       network_layer.Network Parameters����   ����                                             count    �������    ����         ����          ����          ����           �Z             list   	�������   	����                                              �Z                        ZigBee ParametersPAN ID      network_layer.PAN ID����    ����           ����          ����          ����                        ,Application TrafficPacket Interarrival Time      "app_layer.Packet Interarrival Time����   ����       ����      ����      ����                        LZigBee Parameters.Physical Layer ParametersPacket Reception-Power Threshold      -802_15_4_mac.Packet Reception-Power Threshold����   ����               ����              ����              ����                        Application TrafficPacket Size      app_layer.Packet Size����   ����       ����      ����      ����                        Application TrafficStart Time      app_layer.Start Time����   ����       ����      ����      ����                        Application TrafficStop Time      app_layer.Stop Time����   ����               ����              ����              ����                        >ZigBee Parameters.Physical Layer ParametersTransmission Bands       network_layer.Transmission Bands����   ����                                             count    �������    ����         ����          ����          ����           �Z             list   	�������   	����                                              �Z                       :ZigBee Parameters.Physical Layer ParametersTransmit Power      wireless_tx.channel [0].power����   ����               ����              ����              ����                        ACK Mechanism               Disabled      CSMA-CA Parameters               Default Settings      Channel Sensing Duration         ?�����������      	Data Rate          ����   Auto Calculate      Destination            Random      Device Type                
End Device      Network Parameters               Default Tree Network      PAN ID          ����   Auto Assigned      Packet Interarrival Time            constant (1.0)       Packet Reception-Power Threshold         �U@        -85      Packet Size            constant (1024)      
Start Time            uniform (20, 21)      	Stop Time         ��         Infinity      
TIM source            none      Transmission Bands               	Worldwide      Transmit Power         
?�����������   
   altitude         
?�      ����   
   altitude modeling            relative to subnet-platform      	condition            ����      financial cost            0.00      hostname         ����      minimized icon            circle/#708090      phase                 ����      priority              ����      role         ����      user id              ����                �  R   
       
   802_15_4_mac   
       J   p427_802_15_4_mac   J          	processor                   ACK Mechanism   ���   	      Disabled   	      Channel Sensing Duration   ���   	?�����������   	      	Data Rate    ���   	����   Auto Calculate   	       Packet Reception-Power Threshold   ���   	�U@        -85   	      begsim intrpt   ���   
   ����   
      csma_ca.CSMA-CA Parameters   ���   	      Default Settings   	   	      �  �          
   wireless_rx   
       J            count    ���   
   ����   
      list   	���   J            packet formats   ���   J   �427_zigbee_ack,427_zigbee_beacon,427_zigbee_beacon_request,427_zigbee_data,427_zigbee_join_response,427_zigbee_network_pdu,427_zigbee_routing   J      	bandwidth   ���   
@$      ����   
   J   J          bpsk          ?�      ����                  ����             
dra_ragain          
   zigbee_dra_power   
          dra_bkgnoise             
dra_inoise             dra_snr             dra_ber             	dra_error             dra_ecc             ra_rx                       nd_radio_receiver         
   �  �          
   wireless_tx   
       J            count    ���   
   ����   
      list   	���   J            packet formats   ���   J   �427_zigbee_ack,427_zigbee_beacon,427_zigbee_beacon_request,427_zigbee_data,427_zigbee_join_response,427_zigbee_network_pdu,427_zigbee_routing   J      power   ���   	@Y      ����   	   J   J          bpsk             dra_rxgroup             	dra_txdel             dra_closure             dra_chanmatch             
dra_tagain             dra_propdel             ra_tx                       nd_radio_transmitter             �   �          J   node_linker   J       J   p427_node_linker   J          	processor                      $   �          J   TESTINGsink   J          sink             	processor                                   �  �   �  O   
       
   strm_6   
       
   src stream [0]   
       
   dest stream [1]   
          ����                  ����             ����                                           nd_packet_stream          	      
      �  M   �  �   
       
   strm_7   
       
   src stream [1]   
       
   dest stream [0]   
          ����                  ����             ����                                           nd_packet_stream                     �  �   �  M          
   stat_0   
       
   channel [0]   
       
   !radio receiver.received power (W)   
       
   
instat [0]   
          ����                  ����          
    ����   
       
    ����   
           ����              ����          ԲI�%��}����          ԲI�%��}����             0����                                           nd_statistic_wire          &            �   �   �  L   
       J   strm_8   J       J   src stream [0]   J       J   dest stream [0]   J          ����                  ����             ����                                           nd_packet_stream          (            �  Q   �   �   
       J   strm_9   J       J   src stream [0]   J       J   dest stream [0]   J          ����                  ����             ����                                           nd_packet_stream          *            �   �     �   
       J   strm_10   J       J   src stream [1]   J       J   dest stream [0]   J          ����                  ����             ����                                           nd_packet_stream         +      4network_layer.Packets Dropped (Not Joined) (packets)   &Packets Dropped (Not Joined) (packets)           ZigBee Network Layer   bucket/default total/sum   linear   ZigBee Network Layer   network_layer.PAN Affiliation   PAN Affiliation           ZigBee Network Layer   normal   square-wave   ZigBee Network Layer   network_layer.Number of Hops   Number of Hops           ZigBee Network Layer   normal   discrete   ZigBee Network Layer   !network_layer.End Device Capacity   End Device Capacity           ZigBee Network Layer   normal   square-wave   ZigBee Network Layer   network_layer.Router Capacity   Router Capacity           ZigBee Network Layer   normal   square-wave   ZigBee Network Layer   $app_layer.End-to-end Delay (seconds)   End-to-end Delay (seconds)           ZigBee Application    bucket/default total/sample mean   linear   ZigBee Application   #app_layer.Traffic Dropped (packets)   Traffic Dropped (packets)           ZigBee Application   bucket/default total/sum_time   linear   ZigBee Application   %app_layer.Traffic Received (bits/sec)   Traffic Received (bits/sec)           ZigBee Application   bucket/default total/sum_time   linear   ZigBee Application   (app_layer.Traffic Received (packets/sec)   Traffic Received (packets/sec)           ZigBee Application   bucket/default total/sum_time   linear   ZigBee Application   !app_layer.Traffic Sent (bits/sec)   Traffic Sent (bits/sec)           ZigBee Application   bucket/default total/sum_time   linear   ZigBee Application   $app_layer.Traffic Sent (packets/sec)   Traffic Sent (packets/sec)           ZigBee Application   bucket/default total/sum_time   linear   ZigBee Application   ,app_layer.Traffic Dropped en Route (packets)   "Traffic Dropped en Route (packets)           ZigBee Application   bucket/default total/sum_time   linear   ZigBee Application   4app_layer.Traffic Received by Destination (bits/sec)   *Traffic Received by Destination (bits/sec)           ZigBee Application   bucket/default total/sum_time   linear   ZigBee Application   7app_layer.Traffic Received by Destination (packets/sec)   -Traffic Received by Destination (packets/sec)           ZigBee Application   bucket/default total/sum_time   linear   ZigBee Application   ,802_15_4_mac.Control Traffic Rcvd (bits/sec)   Control Traffic Rcvd (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC   ,802_15_4_mac.Control Traffic Sent (bits/sec)   Control Traffic Sent (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC   ?802_15_4_mac.Data Dropped (Retry Threshold Exceeded) (bits/sec)   2Data Dropped (Retry Threshold Exceeded) (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC   )802_15_4_mac.Data Traffic Rcvd (bits/sec)   Data Traffic Rcvd (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC   )802_15_4_mac.Data Traffic Sent (bits/sec)   Data Traffic Sent (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC   802_15_4_mac.Delay (sec)   Delay (sec)           ZigBee 802_15_4 MAC    bucket/default total/sample mean   linear   ZigBee 802_15_4 MAC   802_15_4_mac.Load (bits/sec)   Load (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC   /802_15_4_mac.Management Traffic Rcvd (bits/sec)   "Management Traffic Rcvd (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC   /802_15_4_mac.Management Traffic Sent (bits/sec)   "Management Traffic Sent (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC   %802_15_4_mac.Media Access Delay (sec)   Media Access Delay (sec)           ZigBee 802_15_4 MAC    bucket/default total/sample mean   linear   ZigBee 802_15_4 MAC   !802_15_4_mac.Queue Size (packets)   Queue Size (packets)           ZigBee 802_15_4 MAC    bucket/default total/sample mean   linear   ZigBee 802_15_4 MAC    802_15_4_mac.Queuing Delay (sec)   Queuing Delay (sec)           ZigBee 802_15_4 MAC    bucket/default total/sample mean   linear   ZigBee 802_15_4 MAC   .802_15_4_mac.Retransmission Attempts (packets)   !Retransmission Attempts (packets)           ZigBee 802_15_4 MAC    bucket/default total/sample mean   linear   ZigBee 802_15_4 MAC   "802_15_4_mac.Throughput (bits/sec)   Throughput (bits/sec)           ZigBee 802_15_4 MAC   bucket/default total/sum_time   linear   ZigBee 802_15_4 MAC                    