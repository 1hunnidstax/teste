.class public Lcom/vungle/publisher/AdConfig;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/n;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/m;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/vungle/publisher/m;

    invoke-direct {v0}, Lcom/vungle/publisher/m;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/AdConfig;->setTransitionAnimationEnabled(Z)V

    .line 30
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v1, v0, p2}, Lcom/vungle/publisher/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDelegateAdConfig()Lcom/vungle/publisher/m;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    return-object v0
.end method

.method public getExtra1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->getExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->getIncentivizedCancelDialogBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->getIncentivizedCancelDialogTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->getIncentivizedUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()Lcom/vungle/publisher/Orientation;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->getOrientation()Lcom/vungle/publisher/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->getPlacement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBackButtonImmediatelyEnabled()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->isBackButtonImmediatelyEnabled()Z

    move-result v0

    return v0
.end method

.method public isImmersiveMode()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->isImmersiveMode()Z

    move-result v0

    return v0
.end method

.method public isIncentivized()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->isIncentivized()Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->isSoundEnabled()Z

    move-result v0

    return v0
.end method

.method public isTransitionAnimationEnabled()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->isTransitionAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public setBackButtonImmediatelyEnabled(Z)V
    .locals 1
    .param p1, "isBackButtonImmediatelyEnabled"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->a(Z)V

    .line 66
    return-void
.end method

.method public setExtra1(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 84
    return-void
.end method

.method public setExtra2(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public setExtra3(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 120
    return-void
.end method

.method public setExtra4(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 138
    return-void
.end method

.method public setExtra5(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 156
    return-void
.end method

.method public setExtra6(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 174
    return-void
.end method

.method public setExtra7(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method public setExtra8(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 210
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1
    .param p1, "isImmersiveMode"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->b(Z)V

    .line 265
    return-void
.end method

.method public setIncentivized(Z)V
    .locals 1
    .param p1, "isIncentivized"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->c(Z)V

    .line 287
    return-void
.end method

.method public setIncentivizedCancelDialogBodyText(Ljava/lang/String;)V
    .locals 1
    .param p1, "bodyText"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->b(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public setIncentivizedCancelDialogCloseButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "closeButtonText"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->c(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public setIncentivizedCancelDialogKeepWatchingButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "keepWatchingButtonText"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->d(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public setIncentivizedCancelDialogTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->e(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setIncentivizedUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "incentivizedUserId"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->f(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public setOrientation(Lcom/vungle/publisher/Orientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/vungle/publisher/Orientation;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->a(Lcom/vungle/publisher/Orientation;)V

    .line 433
    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 1
    .param p1, "placement"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->g(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 1
    .param p1, "isSoundEnabled"    # Z

    .prologue
    .line 486
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->d(Z)V

    .line 487
    return-void
.end method

.method public setTransitionAnimationEnabled(Z)V
    .locals 1
    .param p1, "isTransitionAnimationEnabled"    # Z

    .prologue
    .line 511
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/m;->e(Z)V

    .line 512
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
