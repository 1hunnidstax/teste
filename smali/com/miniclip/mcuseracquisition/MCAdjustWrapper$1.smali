.class final Lcom/miniclip/mcuseracquisition/MCAdjustWrapper$1;
.super Ljava/lang/Object;
.source "MCAdjustWrapper.java"

# interfaces
.implements Lcom/adjust/sdk/OnAttributionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->initializeAdjustWithAppToken(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttributionChanged(Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 3
    .param p1, "attribution"    # Lcom/adjust/sdk/AdjustAttribution;

    .prologue
    .line 36
    const-string v0, "MCADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjust attribution changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
