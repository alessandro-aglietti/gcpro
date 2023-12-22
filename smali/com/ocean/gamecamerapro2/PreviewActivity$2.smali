.class Lcom/ocean/gamecamerapro2/PreviewActivity$2;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ocean/gamecamerapro2/PreviewActivity;->readSocketData(Lcom/ocean/cmdrequest/CameraRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

.field final synthetic val$req:Lcom/ocean/cmdrequest/CameraRequest;


# direct methods
.method constructor <init>(Lcom/ocean/gamecamerapro2/PreviewActivity;Lcom/ocean/cmdrequest/CameraRequest;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    iput-object p2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->val$req:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0x400

    .line 1244
    new-array v0, v0, [B

    .line 1247
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Ljava/net/Socket;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1700(Lcom/ocean/gamecamerapro2/PreviewActivity;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1251
    :cond_2
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1800(Lcom/ocean/gamecamerapro2/PreviewActivity;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    return-void

    .line 1253
    :cond_3
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1302(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1255
    :try_start_0
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1800(Lcom/ocean/gamecamerapro2/PreviewActivity;)Ljava/io/InputStream;

    move-result-object v1

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    .line 1258
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    .line 1259
    iget-object v1, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->val$req:Lcom/ocean/cmdrequest/CameraRequest;

    invoke-virtual {v1, v3}, Lcom/ocean/cmdrequest/CameraRequest;->xmlStreamDecode2(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "3020"

    .line 1262
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1264
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1902(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    const-string v3, "3020"

    .line 1265
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_4

    .line 1266
    sget-boolean v5, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-nez v5, :cond_4

    .line 1268
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$102(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1269
    sput-boolean v2, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    .line 1270
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2002(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1271
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2102(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1272
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2202(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    goto :goto_2

    :cond_4
    const/16 v5, 0x9

    if-ne v3, v5, :cond_5

    .line 1276
    sget-boolean v5, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz v5, :cond_5

    .line 1278
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$102(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1279
    sput-boolean v4, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    .line 1280
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2002(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1281
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2102(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1282
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2202(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    goto :goto_2

    :cond_5
    const/4 v5, -0x7

    if-ne v3, v5, :cond_6

    .line 1286
    sget-boolean v3, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    if-eqz v3, :cond_6

    .line 1288
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$102(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1289
    sput-boolean v4, Lcom/ocean/gamecamerapro2/PreviewActivity;->Camera_isRecording:Z

    .line 1290
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2002(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1291
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2102(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1292
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2202(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1294
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2300(Lcom/ocean/gamecamerapro2/PreviewActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x22

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_2
    const-string v3, "9019"

    .line 1301
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_7

    const-string v3, "9019"

    .line 1303
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_7

    .line 1305
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1902(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1306
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1000(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result v6

    if-eq v3, v6, :cond_7

    .line 1307
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2402(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1308
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1002(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    :cond_7
    const-string v3, "9020"

    .line 1312
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "9020"

    .line 1314
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_8

    .line 1316
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1902(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1317
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2500(Lcom/ocean/gamecamerapro2/PreviewActivity;)I

    move-result v6

    if-eq v3, v6, :cond_8

    .line 1318
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2402(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1319
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2502(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    :cond_8
    const-string v3, "2020"

    .line 1323
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "2020"

    .line 1325
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_9

    .line 1327
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$1902(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1328
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$102(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1330
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2102(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1331
    iget-object v6, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v6, v3}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2602(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    :cond_9
    const-string v3, "1013"

    .line 1334
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1013"

    .line 1336
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 1338
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v4}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$102(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I

    .line 1339
    iget-object v3, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v3, v2}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2702(Lcom/ocean/gamecamerapro2/PreviewActivity;Z)Z

    .line 1340
    iget-object v2, p0, Lcom/ocean/gamecamerapro2/PreviewActivity$2;->this$0:Lcom/ocean/gamecamerapro2/PreviewActivity;

    invoke-static {v2, v1}, Lcom/ocean/gamecamerapro2/PreviewActivity;->access$2802(Lcom/ocean/gamecamerapro2/PreviewActivity;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 1346
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
