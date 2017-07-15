.class final enum Lcom/vungle/publisher/ajl;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/ajl;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/vungle/publisher/akb;

.field private static final synthetic b:[Lcom/vungle/publisher/ajl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/vungle/publisher/ajl;

    sput-object v0, Lcom/vungle/publisher/ajl;->b:[Lcom/vungle/publisher/ajl;

    .line 33
    new-instance v0, Lcom/vungle/publisher/akb;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/ajl;->a:Lcom/vungle/publisher/akb;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/vungle/publisher/alp;->a()Lcom/vungle/publisher/aih;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    sget-object v1, Lcom/vungle/publisher/ajl;->a:Lcom/vungle/publisher/akb;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/vungle/publisher/aih;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/ajl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/vungle/publisher/ajl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ajl;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/ajl;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vungle/publisher/ajl;->b:[Lcom/vungle/publisher/ajl;

    invoke-virtual {v0}, [Lcom/vungle/publisher/ajl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/ajl;

    return-object v0
.end method
