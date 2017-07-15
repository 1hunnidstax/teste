.class Lcom/integralads/avid/library/inmobi/f$b;
.super Landroid/os/Handler;
.source "AvidTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/inmobi/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/integralads/avid/library/inmobi/f$1;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->a()Lcom/integralads/avid/library/inmobi/f;

    move-result-object v0

    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/f;->a(Lcom/integralads/avid/library/inmobi/f;)V

    .line 106
    return-void
.end method
