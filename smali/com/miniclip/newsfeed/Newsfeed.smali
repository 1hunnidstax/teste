.class public Lcom/miniclip/newsfeed/Newsfeed;
.super Ljava/lang/Object;
.source "Newsfeed.java"


# static fields
.field private static instance:Lcom/miniclip/newsfeed/Newsfeed;


# instance fields
.field protected gui:Lcom/miniclip/newsfeed/NewsfeedGUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/miniclip/newsfeed/Newsfeed;

    invoke-direct {v0}, Lcom/miniclip/newsfeed/Newsfeed;-><init>()V

    sput-object v0, Lcom/miniclip/newsfeed/Newsfeed;->instance:Lcom/miniclip/newsfeed/Newsfeed;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/miniclip/newsfeed/NewsfeedGUI;

    invoke-direct {v0}, Lcom/miniclip/newsfeed/NewsfeedGUI;-><init>()V

    iput-object v0, p0, Lcom/miniclip/newsfeed/Newsfeed;->gui:Lcom/miniclip/newsfeed/NewsfeedGUI;

    .line 26
    return-void
.end method

.method public static native dismissBoard()V
.end method

.method public static instance()Lcom/miniclip/newsfeed/Newsfeed;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/miniclip/newsfeed/Newsfeed;->instance:Lcom/miniclip/newsfeed/Newsfeed;

    return-object v0
.end method

.method static openURL(Ljava/lang/String;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 35
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 36
    const-string v3, "Newsfeed"

    const-string v4, "Cannot openURL: Newsfeed could not find the Miniclip Activity."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 46
    const-string v3, "Newsfeed"

    const-string v4, "Failed to open message link."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native showBoard()V
.end method


# virtual methods
.method public native newsfeedBoardDidAppear()V
.end method

.method public native newsfeedBoardDidDisappear()V
.end method

.method public native newsfeedBoardWillAppear()V
.end method

.method public native newsfeedBoardWillDisappear()V
.end method

.method public native newsfeedMessageDisplayed(I)V
.end method

.method public native newsfeedMessageGetItPressed(I)V
.end method

.method public native newsfeedMessageLoaded(I)V
.end method
