.class public Lcom/inmobi/signals/e;
.super Ljava/lang/Object;
.source "CarbNetworkClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/inmobi/signals/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/signals/b;)Lcom/inmobi/signals/c;
    .locals 8

    .prologue
    .line 19
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 22
    new-instance v2, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v2, p1}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 24
    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v2

    .line 25
    new-instance v3, Lcom/inmobi/signals/c;

    invoke-direct {v3, v2}, Lcom/inmobi/signals/c;-><init>(Lcom/inmobi/commons/core/network/c;)V

    .line 28
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v4

    invoke-virtual {p1}, Lcom/inmobi/signals/b;->t()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/signals/n;->a(J)V

    .line 29
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v4

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/signals/n;->b(J)V

    .line 30
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/signals/n;->g(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    invoke-virtual {v3}, Lcom/inmobi/signals/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v2, "Getting Carb list from server failed."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_1
    return-object v3

    .line 31
    :catch_0
    move-exception v0

    .line 32
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setting request-response data size. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v2, "Getting Carb list from server succeeded."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/inmobi/signals/f;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 44
    move v0, v1

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/inmobi/signals/f;->b()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 48
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v4, "Attempting to send pruned Carb list to server."

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 51
    new-instance v4, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v4, p1}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 52
    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v4

    .line 55
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v5

    invoke-virtual {p1}, Lcom/inmobi/signals/f;->t()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/signals/n;->a(J)V

    .line 56
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v5

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/signals/n;->b(J)V

    .line 57
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Lcom/inmobi/signals/n;->g(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v4, "Sending pruned Carb list to server failed."

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    invoke-virtual {p1}, Lcom/inmobi/signals/f;->b()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 80
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    .line 82
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    new-instance v2, Lcom/inmobi/commons/core/d/g;

    const-string v3, "signals"

    const-string v4, "CarbUploadDiscarded"

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    :cond_1
    :goto_3
    return v1

    .line 58
    :catch_0
    move-exception v2

    .line 59
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in setting request-response data size. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/inmobi/signals/f;->c()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 71
    :catch_1
    move-exception v2

    .line 72
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v5, "User data network client interrupted while sleeping."

    invoke-static {v3, v4, v5, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 75
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v2, "Sending pruned Carb list to server succeeded."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x1

    .line 77
    goto :goto_2

    .line 83
    :catch_2
    move-exception v0

    .line 84
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in submitting telemetry event : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
