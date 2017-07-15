.class public Lcom/vungle/publisher/alt;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static final a:Lcom/vungle/publisher/alt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/vungle/publisher/alt;

    invoke-direct {v0}, Lcom/vungle/publisher/alt;-><init>()V

    sput-object v0, Lcom/vungle/publisher/alt;->a:Lcom/vungle/publisher/alt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/vungle/publisher/ahs;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/vungle/publisher/akb;

    const-string v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akb;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vungle/publisher/ajj;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/ajj;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method public static a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/aie;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-object p0
.end method

.method public static b()Lcom/vungle/publisher/ahs;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/vungle/publisher/akb;

    const-string v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akb;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vungle/publisher/aji;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/aji;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method public static c()Lcom/vungle/publisher/ahs;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/vungle/publisher/akb;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akb;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vungle/publisher/ajn;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/ajn;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method public static d()Lcom/vungle/publisher/ahs;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Lcom/vungle/publisher/ahs;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()Lcom/vungle/publisher/ahs;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public static g()Lcom/vungle/publisher/alt;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/vungle/publisher/alt;->a:Lcom/vungle/publisher/alt;

    return-object v0
.end method
