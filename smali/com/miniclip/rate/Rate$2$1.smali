.class Lcom/miniclip/rate/Rate$2$1;
.super Ljava/lang/Object;
.source "Rate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/rate/Rate$2;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/rate/Rate$2;


# direct methods
.method constructor <init>(Lcom/miniclip/rate/Rate$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/rate/Rate$2;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miniclip/rate/Rate$2$1;->this$0:Lcom/miniclip/rate/Rate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 34
    # invokes: Lcom/miniclip/rate/Rate;->sessionStarted()V
    invoke-static {}, Lcom/miniclip/rate/Rate;->access$200()V

    .line 35
    return-void
.end method
