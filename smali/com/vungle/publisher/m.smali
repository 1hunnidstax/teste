.class public Lcom/vungle/publisher/m;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/n;


# instance fields
.field protected a:Landroid/os/Bundle;

.field protected b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/m;->e(Z)V

    .line 33
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 216
    const/4 v0, 0x1

    .line 217
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    if-eqz v1, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 224
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :cond_0
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 228
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/Orientation;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "orientation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isBackButtonEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedCancelDialogBodyText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isImmersiveMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedCancelDialogNegativeButtonText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isIncentivized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedCancelDialogPositiveButtonText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isSoundEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedCancelDialogTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isTransitionAnimationEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/vungle/publisher/m;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/vungle/publisher/m;

    .line 197
    .end local p1    # "object":Ljava/lang/Object;
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 195
    goto :goto_1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedUserId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "placement"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public getExtras()Ljava/util/Map;
    .locals 4
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
    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    iget-object v3, p0, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_0
    return-object v1
.end method

.method public getIncentivizedCancelDialogBodyText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedCancelDialogBodyText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedCancelDialogNegativeButtonText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedCancelDialogPositiveButtonText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedCancelDialogTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "incentivizedUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()Lcom/vungle/publisher/Orientation;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/Orientation;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isBackButtonImmediatelyEnabled()Z
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isBackButtonEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImmersiveMode()Z
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isImmersiveMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isIncentivized()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isIncentivized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isSoundEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTransitionAnimationEnabled()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    const-string v1, "isTransitionAnimationEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    iget-object v1, p0, Lcom/vungle/publisher/m;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/vungle/publisher/m;->a(Ljava/lang/StringBuilder;Landroid/os/Bundle;)V

    .line 210
    iget-object v1, p0, Lcom/vungle/publisher/m;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/vungle/publisher/m;->a(Ljava/lang/StringBuilder;Landroid/os/Bundle;)V

    .line 211
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
