.class Lcom/inmobi/ads/InMobiInterstitial$1;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 766
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;)V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 771
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4

    .prologue
    .line 775
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 776
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 777
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 778
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 780
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 781
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 782
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 784
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-eq v0, v1, :cond_0

    .line 785
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-eq v0, v1, :cond_0

    .line 786
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 787
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiInterstitial;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " No need to fire TRC for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 788
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 787
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    const-string v1, "onAdLoadFailed"

    # invokes: Lcom/inmobi/ads/InMobiInterstitial;->tryFiringTrueRequestBeacon(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$200(Lcom/inmobi/ads/InMobiInterstitial;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Z)V
    .locals 4

    .prologue
    const/16 v1, 0xb

    const/4 v3, 0x1

    .line 741
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->a()V

    .line 742
    if-eqz p2, :cond_0

    .line 743
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 744
    iput v1, v0, Landroid/os/Message;->what:I

    .line 745
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 746
    const-string v2, "available"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 747
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 748
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 750
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 751
    iput v3, v0, Landroid/os/Message;->what:I

    .line 752
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 761
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 755
    iput v1, v0, Landroid/os/Message;->what:I

    .line 756
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 757
    const-string v2, "available"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 758
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 759
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
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
    .line 834
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 835
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 836
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 837
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 839
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 840
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 841
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 842
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 843
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->a()V

    .line 797
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->b()V

    .line 798
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 806
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 807
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 808
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 809
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 810
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    const-string v1, "onAdShowFailed"

    # invokes: Lcom/inmobi/ads/InMobiInterstitial;->tryFiringTrueRequestBeacon(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$200(Lcom/inmobi/ads/InMobiInterstitial;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
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
    .line 853
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 854
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 855
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 856
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 858
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 859
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 860
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 861
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 816
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 821
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 822
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    const-string v1, "onAdDisplayed"

    # invokes: Lcom/inmobi/ads/InMobiInterstitial;->tryFiringTrueRequestBeacon(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$200(Lcom/inmobi/ads/InMobiInterstitial;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 828
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 829
    invoke-static {}, Lcom/inmobi/ads/j;->a()Lcom/inmobi/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # invokes: Lcom/inmobi/ads/InMobiInterstitial;->getPlacementObj()Lcom/inmobi/ads/ax;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/j;->b(Lcom/inmobi/ads/ax;)V

    .line 830
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 848
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1;->a:Lcom/inmobi/ads/InMobiInterstitial;

    # getter for: Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 849
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method
