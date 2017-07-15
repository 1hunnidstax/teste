.class final Lcom/miniclip/rate/Rate$1;
.super Ljava/lang/Object;
.source "Rate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/rate/Rate;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 21
    # invokes: Lcom/miniclip/rate/Rate;->regiterSessionStart()V
    invoke-static {}, Lcom/miniclip/rate/Rate;->access$000()V

    .line 22
    # invokes: Lcom/miniclip/rate/Rate;->registerSessionStop()V
    invoke-static {}, Lcom/miniclip/rate/Rate;->access$100()V

    .line 23
    return-void
.end method
