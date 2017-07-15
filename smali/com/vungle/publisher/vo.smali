.class public Lcom/vungle/publisher/vo;
.super Lcom/vungle/publisher/wv;
.source "vungle"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vungle/publisher/wv;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/vungle/publisher/wv;->f:I

    .line 18
    const/16 v0, 0xa

    iput v0, p0, Lcom/vungle/publisher/wv;->e:I

    .line 19
    return-void
.end method
