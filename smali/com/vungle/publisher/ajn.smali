.class public final Lcom/vungle/publisher/ajn;
.super Lcom/vungle/publisher/ahs;
.source "vungle"


# instance fields
.field private final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vungle/publisher/ahs;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vungle/publisher/ajn;->b:Ljava/util/concurrent/ThreadFactory;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/ahs$a;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/vungle/publisher/ajo;

    iget-object v1, p0, Lcom/vungle/publisher/ajn;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ajo;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
