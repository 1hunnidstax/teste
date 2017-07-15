.class public Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;
.super Ljava/lang/Object;
.source "NewsfeedGUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsfeedMessageView"
.end annotation


# instance fields
.field actionButtonText:Ljava/lang/String;

.field hasUpsellLink:Z

.field messageBitmapLandscape:Landroid/graphics/Bitmap;

.field messageBitmapPortrait:Landroid/graphics/Bitmap;

.field messageID:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;


# direct methods
.method public constructor <init>(Lcom/miniclip/newsfeed/NewsfeedGUI;Ljava/lang/Integer;ZLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miniclip/newsfeed/NewsfeedGUI;
    .param p2, "messageID"    # Ljava/lang/Integer;
    .param p3, "messageHasUpsellLink"    # Z
    .param p4, "actionButtonText"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const-string v0, "GET IT NOW"

    iput-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->actionButtonText:Ljava/lang/String;

    .line 760
    iput-object p2, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->messageID:Ljava/lang/Integer;

    .line 761
    iput-boolean p3, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->hasUpsellLink:Z

    .line 762
    iput-object p4, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->actionButtonText:Ljava/lang/String;

    .line 763
    return-void
.end method


# virtual methods
.method public onPreloadComplete()V
    .locals 2

    .prologue
    .line 779
    invoke-static {}, Lcom/miniclip/newsfeed/Newsfeed;->instance()Lcom/miniclip/newsfeed/Newsfeed;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->messageID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miniclip/newsfeed/Newsfeed;->newsfeedMessageLoaded(I)V

    .line 780
    return-void
.end method

.method public preload([BZ)V
    .locals 4
    .param p1, "imageData"    # [B
    .param p2, "isLandscape"    # Z

    .prologue
    .line 766
    const-string v2, "NewsfeedGUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->messageID:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string v1, "landscape"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 769
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 770
    iput-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->messageBitmapLandscape:Landroid/graphics/Bitmap;

    .line 775
    :goto_1
    invoke-virtual {p0}, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->onPreloadComplete()V

    .line 776
    return-void

    .line 766
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v1, "portrait"

    goto :goto_0

    .line 773
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iput-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$NewsfeedMessageView;->messageBitmapPortrait:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
