.class Lcom/miniclip/NTP/NtpHandler$2;
.super Ljava/lang/Object;
.source "NtpHandler.java"

# interfaces
.implements Lcom/miniclip/NTP/NtpHandler$NtpResponce;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/NTP/NtpHandler;->getOffsetFromServerListAsync(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/NTP/NtpHandler;

.field final synthetic val$callback:I


# direct methods
.method constructor <init>(Lcom/miniclip/NTP/NtpHandler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/NTP/NtpHandler;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miniclip/NTP/NtpHandler$2;->this$0:Lcom/miniclip/NTP/NtpHandler;

    iput p2, p0, Lcom/miniclip/NTP/NtpHandler$2;->val$callback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public success(D)V
    .locals 3
    .param p1, "time"    # D

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miniclip/NTP/NtpHandler$2;->this$0:Lcom/miniclip/NTP/NtpHandler;

    # getter for: Lcom/miniclip/NTP/NtpHandler;->_status:I
    invoke-static {v0}, Lcom/miniclip/NTP/NtpHandler;->access$000(Lcom/miniclip/NTP/NtpHandler;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/NTP/NtpHandler$2$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/miniclip/NTP/NtpHandler$2$1;-><init>(Lcom/miniclip/NTP/NtpHandler$2;D)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/miniclip/NTP/NtpHandler$2;->this$0:Lcom/miniclip/NTP/NtpHandler;

    const/4 v1, 0x2

    # setter for: Lcom/miniclip/NTP/NtpHandler;->_status:I
    invoke-static {v0, v1}, Lcom/miniclip/NTP/NtpHandler;->access$002(Lcom/miniclip/NTP/NtpHandler;I)I

    .line 123
    return-void
.end method
