.class Landroid/media/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 2835
    iput-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 17
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 2839
    sparse-switch p1, :sswitch_data_0

    .line 2937
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    :goto_0
    return-void

    .line 2841
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2842
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    # setter for: Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1, v0}, Landroid/media/AudioService;->access$3402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 2843
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 2844
    .local v15, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2845
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2846
    .local v6, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2847
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 2848
    .local v4, "state":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x80

    const/4 v1, 0x2

    if-ne v4, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    # invokes: Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v2, v3, v1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;II)I

    move-result v7

    .line 2851
    .local v7, "delay":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x66

    const/4 v5, 0x0

    # invokes: Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2857
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2859
    .end local v4    # "state":I
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "delay":I
    :cond_1
    :try_start_2
    monitor-exit v8

    goto :goto_0

    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2848
    .restart local v4    # "state":I
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2857
    .end local v4    # "state":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2863
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_1
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 2864
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2865
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2866
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 2867
    :try_start_5
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 2868
    .restart local v4    # "state":I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v9

    const/16 v10, 0x65

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v11, v4

    move-object v13, v6

    # invokes: Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v8 .. v14}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2874
    monitor-exit v2

    goto/16 :goto_0

    .end local v4    # "state":I
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 2879
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2881
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 2882
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    # setter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v0}, Landroid/media/AudioService;->access$3102(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2883
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 2884
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 2885
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    # setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$3002(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2890
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)V

    .line 2892
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 2895
    :cond_3
    const/16 v16, 0x0

    .line 2896
    .local v16, "status":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2897
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2926
    :cond_4
    :goto_3
    :pswitch_0
    if-nez v16, :cond_5

    .line 2927
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v8 .. v14}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2931
    .end local v16    # "status":Z
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 2887
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    # setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$3002(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    .line 2899
    .restart local v16    # "status":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    .line 2900
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 2901
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v16

    goto :goto_3

    .line 2902
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)I

    move-result v1

    if-nez v1, :cond_8

    .line 2903
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto :goto_3

    .line 2905
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 2906
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_3

    .line 2911
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 2912
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v16

    goto/16 :goto_3

    .line 2913
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)I

    move-result v1

    if-nez v1, :cond_a

    .line 2914
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_3

    .line 2916
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 2917
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_3

    .line 2922
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v16

    goto/16 :goto_3

    .line 2839
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch

    .line 2897
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 5
    .param p1, "profile"    # I

    .prologue
    .line 2939
    sparse-switch p1, :sswitch_data_0

    .line 2970
    :goto_0
    return-void

    .line 2941
    :sswitch_0
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2942
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$3402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 2943
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2944
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2945
    iget-object v3, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 2948
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2949
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2948
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2953
    :sswitch_1
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2954
    :try_start_5
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/high16 v2, -0x7ffe0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2955
    iget-object v2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/high16 v3, -0x7ffe0000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 2958
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 2962
    :sswitch_2
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 2963
    :try_start_6
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$3102(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2964
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 2939
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method