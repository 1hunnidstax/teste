.class public Lcom/inmobi/signals/j;
.super Ljava/lang/Object;
.source "IceNetworkClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/signals/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/inmobi/signals/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/signals/k;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/inmobi/signals/j;->b:Lcom/inmobi/signals/k;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/inmobi/signals/j;->b:Lcom/inmobi/signals/k;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/inmobi/signals/j;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/signals/j$1;

    invoke-direct {v1, p0}, Lcom/inmobi/signals/j$1;-><init>(Lcom/inmobi/signals/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method
