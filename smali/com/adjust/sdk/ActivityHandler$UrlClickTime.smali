.class Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
.super Ljava/lang/Object;
.source "ActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/ActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrlClickTime"
.end annotation


# instance fields
.field clickTime:J

.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V
    .locals 1
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "clickTime"    # J

    .prologue
    .line 304
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;->url:Landroid/net/Uri;

    .line 306
    iput-wide p3, p0, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;->clickTime:J

    .line 307
    return-void
.end method
