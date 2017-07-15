.class Lcom/inmobi/ads/InMobiNative$1;
.super Ljava/lang/Object;
.source "InMobiNative.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiNative;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiNative;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/InMobiNative;

    # getter for: Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$100(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 525
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 530
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 531
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/InMobiNative;

    # getter for: Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiNative;->access$100(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiNative$a;->sendMessage(Landroid/os/Message;)Z

    .line 533
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Z)V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/InMobiNative;

    # getter for: Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$100(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 548
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/InMobiNative;

    # getter for: Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$100(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 553
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/InMobiNative;

    # getter for: Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$100(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 563
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/InMobiNative;

    # getter for: Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$100(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 573
    return-void
.end method
