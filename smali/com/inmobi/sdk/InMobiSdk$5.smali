.class final Lcom/inmobi/sdk/InMobiSdk$5;
.super Ljava/lang/Thread;
.source "InMobiSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/sdk/InMobiSdk;->printGrantedPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 601
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.google.android.gms.permission.ACTIVITY_RECOGNITION"

    aput-object v3, v1, v2

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Permissions granted to SDK are :\nandroid.permission.INTERNET\nandroid.permission.ACCESS_NETWORK_STATE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 611
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ads"

    invoke-static {v5, v6, v4}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 612
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void
.end method
