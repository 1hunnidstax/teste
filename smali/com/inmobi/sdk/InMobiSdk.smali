.class public final Lcom/inmobi/sdk/InMobiSdk;
.super Ljava/lang/Object;
.source "InMobiSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;,
        Lcom/inmobi/sdk/InMobiSdk$AgeGroup;,
        Lcom/inmobi/sdk/InMobiSdk$Gender;,
        Lcom/inmobi/sdk/InMobiSdk$Education;,
        Lcom/inmobi/sdk/InMobiSdk$Ethnicity;,
        Lcom/inmobi/sdk/InMobiSdk$ImIdType;,
        Lcom/inmobi/sdk/InMobiSdk$LogLevel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/inmobi/sdk/InMobiSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->initComponents()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->deInitComponents()V

    return-void
.end method

.method public static final addIdType(Lcom/inmobi/sdk/InMobiSdk$ImIdType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->LOGIN:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    if-ne p0, v0, :cond_1

    .line 726
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/e;->n(Ljava/lang/String;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->SESSION:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    if-ne p0, v0, :cond_0

    .line 728
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/e;->o(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static deInitComponents()V
    .locals 5

    .prologue
    .line 665
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->c()V

    .line 666
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/c;->c()V

    .line 667
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->c()V

    .line 668
    invoke-static {}, Lcom/inmobi/ads/j;->a()Lcom/inmobi/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/j;->c()V

    .line 669
    invoke-static {}, Lcom/inmobi/ads/m;->a()Lcom/inmobi/ads/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in stopping SDK components; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 673
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "SDK encountered unexpected error while stopping internal components"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasSdkVersionChanged(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 583
    invoke-static {p0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 368
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/inmobi/commons/a/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 369
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The minimum supported Android API level is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    invoke-static {}, Lcom/inmobi/commons/a/b;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SDK could not be initialized."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    return-void

    .line 376
    :cond_0
    if-nez p0, :cond_1

    .line 377
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Activity supplied as null, SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 537
    :goto_1
    invoke-static {v8}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;)V

    .line 538
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v6, "SDK could not be initialized; an unexpected error was encountered"

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encountered unexpected error while initializing the SDK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 541
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-static {v4, v5, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :goto_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InMobi SDK initialized with account id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 551
    const-string v1, "initTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "root"

    const-string v3, "SdkInitialized"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 558
    :goto_3
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->printGrantedPermissions()V

    goto :goto_0

    .line 382
    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 383
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Account id cannot be null or empty. Please provide a valid account id."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.inmobi.rendering.InMobiAdActivity"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 392
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "The activity com.inmobi.rendering.InMobiAdActivity not present in AndroidManifest. SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :cond_4
    invoke-static {p0}, Lcom/inmobi/sdk/InMobiSdk;->isBroadcastReceiverDeclared(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 400
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "The BroadcastReceiver com.inmobi.commons.core.utilities.uid.ImIdShareBroadCastReceiver not present in AndroidManifest. SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :cond_5
    const-string v0, "ads"

    const-string v1, "android.permission.INTERNET"

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 409
    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 410
    :cond_6
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Please grant the mandatory permissions : INTERNET and ACCESS_NETWORK_STATE, SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :cond_7
    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 418
    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 419
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Please grant the location permissions (ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION, or both) for better ad targeting."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 429
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x24

    if-eq v0, v4, :cond_9

    .line 430
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v5, "Invalid account id passed to init. Please provide a valid account id."

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_9
    invoke-static {}, Lcom/inmobi/commons/core/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 435
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v5, "Please include Picasso library as per integration guidelines."

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 440
    :cond_a
    :try_start_4
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 447
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 448
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v5, "SDK already initialized"

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 450
    :try_start_6
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v4, "root"

    const-string v5, "InitRequested"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 451
    :catch_1
    move-exception v0

    .line 452
    :try_start_7
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in submitting telemetry event : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 453
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_1

    .line 441
    :catch_3
    move-exception v0

    .line 442
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v5, "Please consider including the RecyclerView support library as per integration guidelines"

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 458
    :cond_b
    invoke-static {p0}, Lcom/inmobi/sdk/InMobiSdk;->hasSdkVersionChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 459
    invoke-static {p0}, Lcom/inmobi/sdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    .line 460
    invoke-static {p0, v0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Z)V

    .line 461
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    :cond_c
    invoke-static {p0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->b()V

    .line 474
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/c;->b()V

    .line 477
    invoke-static {p0}, Lcom/inmobi/commons/a/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 478
    invoke-static {p0}, Lcom/inmobi/sdk/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 479
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    invoke-static {v0}, Lcom/inmobi/sdk/InMobiSdk;->sendDbDeletionTelemetryEvent(Ljava/lang/String;)V

    goto :goto_5

    .line 484
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 485
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Z)V

    .line 489
    :cond_e
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->b()V

    .line 490
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->initComponents()V

    .line 491
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/inmobi/sdk/InMobiSdk$3;

    invoke-direct {v4}, Lcom/inmobi/sdk/InMobiSdk$3;-><init>()V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 505
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 506
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->d()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 509
    :try_start_8
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v4, "root"

    const-string v5, "InitRequested"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 515
    :goto_6
    :try_start_9
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_f

    .line 517
    new-instance v4, Lcom/inmobi/sdk/InMobiSdk$4;

    invoke-direct {v4}, Lcom/inmobi/sdk/InMobiSdk$4;-><init>()V

    invoke-virtual {v0, v4}, Lcom/inmobi/commons/core/utilities/a;->a(Lcom/inmobi/commons/core/utilities/a$b;)V

    :cond_f
    move-object v0, v1

    .line 542
    goto/16 :goto_2

    .line 510
    :catch_4
    move-exception v0

    .line 511
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in submitting telemetry event : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 512
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    .line 553
    :catch_5
    move-exception v0

    .line 554
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 166
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/inmobi/commons/a/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 167
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The minimum supported Android API level is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    invoke-static {}, Lcom/inmobi/commons/a/b;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SDK could not be initialized."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_0
    return-void

    .line 174
    :cond_0
    if-nez p0, :cond_1

    .line 175
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Context supplied as null, SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 336
    :goto_1
    invoke-static {v8}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;)V

    .line 337
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v6, "SDK could not be initialized; an unexpected error was encountered"

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encountered unexpected error while initializing the SDK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v4, v5, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InMobi SDK initialized with account id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 349
    const-string v1, "initTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "root"

    const-string v3, "SdkInitialized"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 356
    :goto_3
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->printGrantedPermissions()V

    goto :goto_0

    .line 180
    :cond_1
    :try_start_2
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 181
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "SDK could not be initialized. Please supply an Activity context to initialize Inmobi SDK"

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 187
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Account id cannot be null or empty. Please provide a valid account id."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.inmobi.rendering.InMobiAdActivity"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_5

    .line 196
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "The activity com.inmobi.rendering.InMobiAdActivity not present in AndroidManifest. SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_5
    invoke-static {p0}, Lcom/inmobi/sdk/InMobiSdk;->isBroadcastReceiverDeclared(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 204
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "The BroadcastReceiver com.inmobi.commons.core.utilities.uid.ImIdShareBroadCastReceiver not present in AndroidManifest. SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_6
    const-string v0, "ads"

    const-string v1, "android.permission.INTERNET"

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 213
    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 214
    :cond_7
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Please grant the mandatory permissions : INTERNET and ACCESS_NETWORK_STATE, SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_8
    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 222
    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 223
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Please grant the location permissions (ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION, or both) for better ad targeting."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 233
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x24

    if-eq v0, v4, :cond_a

    .line 234
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v5, "Invalid account id passed to init. Please provide a valid account id."

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 239
    :cond_a
    :try_start_4
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 246
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 247
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v5, "SDK already initialized"

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 249
    :try_start_6
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v4, "root"

    const-string v5, "InitRequested"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    :try_start_7
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in submitting telemetry event : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_1

    .line 240
    :catch_3
    move-exception v0

    .line 241
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v5, "Please consider including the RecyclerView support library as per integration guidelines"

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 257
    :cond_b
    invoke-static {p0}, Lcom/inmobi/sdk/InMobiSdk;->hasSdkVersionChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 258
    invoke-static {p0}, Lcom/inmobi/sdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    .line 259
    invoke-static {p0, v0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Z)V

    .line 260
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    :cond_c
    invoke-static {p0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->b()V

    .line 273
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/c;->b()V

    .line 276
    invoke-static {p0}, Lcom/inmobi/commons/a/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 277
    invoke-static {p0}, Lcom/inmobi/sdk/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 278
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    invoke-static {v0}, Lcom/inmobi/sdk/InMobiSdk;->sendDbDeletionTelemetryEvent(Ljava/lang/String;)V

    goto :goto_5

    .line 283
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 284
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Z)V

    .line 288
    :cond_e
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->b()V

    .line 289
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->initComponents()V

    .line 290
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->d()V

    .line 291
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/inmobi/sdk/InMobiSdk$1;

    invoke-direct {v4}, Lcom/inmobi/sdk/InMobiSdk$1;-><init>()V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 308
    :try_start_8
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v4, "root"

    const-string v5, "InitRequested"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 314
    :goto_6
    :try_start_9
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_f

    .line 316
    new-instance v4, Lcom/inmobi/sdk/InMobiSdk$2;

    invoke-direct {v4}, Lcom/inmobi/sdk/InMobiSdk$2;-><init>()V

    invoke-virtual {v0, v4}, Lcom/inmobi/commons/core/utilities/a;->a(Lcom/inmobi/commons/core/utilities/a$b;)V

    :cond_f
    move-object v0, v1

    .line 341
    goto/16 :goto_2

    .line 309
    :catch_4
    move-exception v0

    .line 310
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in submitting telemetry event : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    .line 351
    :catch_5
    move-exception v0

    .line 352
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private static initComponents()V
    .locals 2

    .prologue
    .line 621
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "initComponents"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 623
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 624
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$6;

    invoke-direct {v0}, Lcom/inmobi/sdk/InMobiSdk$6;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 661
    return-void
.end method

.method private static isBroadcastReceiverDeclared(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 588
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/inmobi/commons/core/utilities/uid/ImIdShareBroadCastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 590
    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return v0

    .line 591
    :catch_0
    move-exception v0

    .line 594
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static printGrantedPermissions()V
    .locals 1

    .prologue
    .line 598
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$5;

    invoke-direct {v0}, Lcom/inmobi/sdk/InMobiSdk$5;-><init>()V

    .line 617
    invoke-virtual {v0}, Lcom/inmobi/sdk/InMobiSdk$5;->start()V

    .line 618
    return-void
.end method

.method public static final removeIdType(Lcom/inmobi/sdk/InMobiSdk$ImIdType;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 739
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->LOGIN:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    if-ne p0, v0, :cond_1

    .line 740
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/e;->n(Ljava/lang/String;)V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->SESSION:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    if-ne p0, v0, :cond_0

    .line 742
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/e;->o(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static resetMediaCache(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 681
    invoke-static {p0}, Lcom/inmobi/commons/a/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 682
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "Cannot create media cache directory"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_0
    return-void
.end method

.method private static sendDbDeletionTelemetryEvent(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 568
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 572
    const-string v1, "filename"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v1, "description"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB Deleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "PersistentDataCleanFail"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 577
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setAge(I)V
    .locals 0

    .prologue
    .line 752
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->a(I)V

    .line 753
    return-void
.end method

.method public static final setAgeGroup(Lcom/inmobi/sdk/InMobiSdk$AgeGroup;)V
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->a(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public static final setAreaCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 770
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->b(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public static final setEducation(Lcom/inmobi/sdk/InMobiSdk$Education;)V
    .locals 2

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Education;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->i(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public static final setEthnicity(Lcom/inmobi/sdk/InMobiSdk$Ethnicity;)V
    .locals 2

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->h(Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public static final setGender(Lcom/inmobi/sdk/InMobiSdk$Gender;)V
    .locals 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Gender;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->g(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public static final setHouseHoldIncome(Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;)V
    .locals 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->k(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public static final setIncome(I)V
    .locals 0

    .prologue
    .line 846
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->c(I)V

    .line 847
    return-void
.end method

.method public static final setInterests(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 864
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->l(Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public static final setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 837
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->j(Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public static final setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 882
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->a(Landroid/location/Location;)V

    .line 883
    return-void
.end method

.method public static final setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 790
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->d(Ljava/lang/String;)V

    .line 791
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/e;->e(Ljava/lang/String;)V

    .line 792
    invoke-static {p2}, Lcom/inmobi/commons/core/utilities/info/e;->f(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public static setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V
    .locals 2

    .prologue
    .line 704
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$7;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 715
    :goto_0
    return-void

    .line 706
    :pswitch_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->NONE:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 709
    :pswitch_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 712
    :pswitch_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final setNationality(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 873
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->m(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public static final setPostalCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 779
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->c(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public static final setYearOfBirth(I)V
    .locals 0

    .prologue
    .line 801
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->b(I)V

    .line 802
    return-void
.end method
