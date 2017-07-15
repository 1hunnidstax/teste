.class Lcom/miniclip/NTP/NtpHandler$1;
.super Ljava/lang/Thread;
.source "NtpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/NTP/NtpHandler;->getOffsetFromServerAsync(Ljava/lang/String;Lcom/miniclip/NTP/NtpHandler$NtpResponce;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/NTP/NtpHandler;

.field final synthetic val$onComplete:Lcom/miniclip/NTP/NtpHandler$NtpResponce;

.field final synthetic val$serverName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/NTP/NtpHandler;Ljava/lang/String;Lcom/miniclip/NTP/NtpHandler$NtpResponce;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/NTP/NtpHandler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miniclip/NTP/NtpHandler$1;->this$0:Lcom/miniclip/NTP/NtpHandler;

    iput-object p2, p0, Lcom/miniclip/NTP/NtpHandler$1;->val$serverName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miniclip/NTP/NtpHandler$1;->val$onComplete:Lcom/miniclip/NTP/NtpHandler$NtpResponce;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/miniclip/NTP/NtpHandler$1;->this$0:Lcom/miniclip/NTP/NtpHandler;

    iget-object v4, p0, Lcom/miniclip/NTP/NtpHandler$1;->val$serverName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/miniclip/NTP/NtpHandler;->getOffsetFromServer(Ljava/lang/String;)D

    move-result-wide v2

    .line 92
    .local v2, "time":D
    iget-object v1, p0, Lcom/miniclip/NTP/NtpHandler$1;->val$onComplete:Lcom/miniclip/NTP/NtpHandler$NtpResponce;

    invoke-interface {v1, v2, v3}, Lcom/miniclip/NTP/NtpHandler$NtpResponce;->success(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v2    # "time":D
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    iget-object v1, p0, Lcom/miniclip/NTP/NtpHandler$1;->val$onComplete:Lcom/miniclip/NTP/NtpHandler$NtpResponce;

    invoke-interface {v1}, Lcom/miniclip/NTP/NtpHandler$NtpResponce;->failure()V

    goto :goto_0
.end method
