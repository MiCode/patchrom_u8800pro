.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3

.field private static final localLOGV:Z


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDestroyReportNeeded:Z

.field mDrawingStopped:Z

.field mFormat:I

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field mNewSurfaceNeeded:Z

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mType:I

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 171
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 96
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 97
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 100
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 113
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 115
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 117
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 142
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 143
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 144
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 145
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 149
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 150
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 153
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 154
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 157
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 159
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 165
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 672
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 172
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 96
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 97
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 100
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 113
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 115
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 117
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 142
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 143
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 144
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 145
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 149
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 150
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 153
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 154
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 157
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 159
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 165
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 672
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 177
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 96
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 97
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 100
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 113
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 115
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 117
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 142
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 143
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 144
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 145
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 149
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 150
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 153
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 154
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 157
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 159
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 165
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 672
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 182
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 187
    return-void
.end method

.method private reportSurfaceDestroyed()V
    .locals 7

    .prologue
    .line 588
    iget-boolean v5, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    if-eqz v5, :cond_0

    .line 589
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 591
    iget-object v5, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 592
    :try_start_0
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/view/SurfaceHolder$Callback;

    .line 593
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 594
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 596
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 595
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 599
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 600
    return-void
.end method

.method private updateWindow(ZZ)V
    .locals 39
    .parameter "force"
    .parameter "redrawNeeded"

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v36

    check-cast v36, Landroid/view/ViewRoot;

    .line 409
    .local v36, viewRoot:Landroid/view/ViewRoot;
    if-eqz v36, :cond_2

    .line 410
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 413
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 414
    .local v31, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-nez v5, :cond_3

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_4

    .line 415
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 418
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v27, v0

    .line 419
    .local v27, myWidth:I
    if-gtz v27, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v27

    .line 420
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v26, v0

    .line 421
    .local v26, myHeight:I
    if-gtz v26, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v26

    .line 423
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v5, v0

    if-nez v5, :cond_14

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 425
    .local v22, creating:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v6, v0

    if-eq v5, v6, :cond_15

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 426
    .local v23, formatChanged:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v26

    if-eq v0, v1, :cond_16

    :cond_7
    const/4 v5, 0x1

    move/from16 v32, v5

    .line 427
    .local v32, sizeChanged:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mVisible:Z

    move v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move v6, v0

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    move v5, v0

    if-eqz v5, :cond_17

    :cond_8
    const/4 v5, 0x1

    move/from16 v38, v5

    .line 429
    .local v38, visibleChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mType:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v6, v0

    if-eq v5, v6, :cond_18

    const/4 v5, 0x1

    move/from16 v35, v5

    .line 430
    .local v35, typeChanged:Z
    :goto_5
    if-nez p1, :cond_9

    if-nez v22, :cond_9

    if-nez v23, :cond_9

    if-nez v32, :cond_9

    if-nez v38, :cond_9

    if-nez v35, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v5, v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v5, v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    move v5, v0

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move v5, v0

    if-nez v5, :cond_9

    if-eqz p2, :cond_0

    .line 441
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 442
    .local v37, visible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLeft:I

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mTop:I

    .line 444
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 445
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mType:I

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLeft:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mTop:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-eqz v5, :cond_a

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 460
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x4218

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_b

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 472
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 473
    .local v17, a:Landroid/content/res/TypedArray;
    if-eqz v17, :cond_c

    const/16 v5, 0x9

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mFullScreen:Z

    if-eqz v5, :cond_e

    .line 476
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 479
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v5, v0

    if-nez v5, :cond_f

    .line 482
    new-instance v5, Landroid/view/SurfaceView$MyWindow;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWindowType:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mVisible:Z

    move v8, v0

    if-eqz v8, :cond_19

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object v9, v0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/IWindowSession;->addWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    .line 489
    :cond_f
    if-eqz v38, :cond_11

    if-eqz v37, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    move v5, v0

    if-eqz v5, :cond_11

    .line 490
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->reportSurfaceDestroyed()V

    .line 493
    :cond_11
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    const/4 v5, 0x0

    :try_start_1
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v30, v0

    .line 502
    .local v30, reportDrawNeeded:Z
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 503
    if-nez v37, :cond_1a

    const/4 v5, 0x1

    :goto_7
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v9, v0

    if-eqz v37, :cond_1b

    const/4 v10, 0x0

    :goto_8
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    invoke-interface/range {v5 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v29

    .line 509
    .local v29, relayoutResult:I
    and-int/lit8 v5, v29, 0x2

    if-eqz v5, :cond_12

    .line 510
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 516
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-nez v5, :cond_1c

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 527
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    .line 528
    .local v34, surfaceWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    .line 529
    .local v33, surfaceHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v33

    if-eq v0, v1, :cond_1d

    :cond_13
    const/4 v5, 0x1

    move/from16 v28, v5

    .line 531
    .local v28, realSizeChanged:Z
    :goto_a
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 532
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 538
    or-int v5, v22, v30

    or-int p2, p2, v5

    .line 540
    if-eqz v37, :cond_23

    .line 541
    const/4 v5, 0x1

    :try_start_3
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v5, v0

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 545
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v0, v6

    new-array v0, v0, [Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v21, v0

    .line 546
    .local v21, callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 547
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 549
    if-eqz v38, :cond_1f

    .line 550
    const/4 v5, 0x1

    :try_start_5
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 551
    move-object/from16 v19, v21

    .local v19, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_b
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1f

    aget-object v20, v19, v24

    .line 552
    .local v20, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 551
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    .line 424
    .end local v17           #a:Landroid/content/res/TypedArray;
    .end local v19           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v22           #creating:Z
    .end local v23           #formatChanged:Z
    .end local v24           #i$:I
    .end local v25           #len$:I
    .end local v28           #realSizeChanged:Z
    .end local v29           #relayoutResult:I
    .end local v30           #reportDrawNeeded:Z
    .end local v32           #sizeChanged:Z
    .end local v33           #surfaceHeight:I
    .end local v34           #surfaceWidth:I
    .end local v35           #typeChanged:Z
    .end local v37           #visible:Z
    .end local v38           #visibleChanged:Z
    :cond_14
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_1

    .line 425
    .restart local v22       #creating:Z
    :cond_15
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_2

    .line 426
    .restart local v23       #formatChanged:Z
    :cond_16
    const/4 v5, 0x0

    move/from16 v32, v5

    goto/16 :goto_3

    .line 427
    .restart local v32       #sizeChanged:Z
    :cond_17
    const/4 v5, 0x0

    move/from16 v38, v5

    goto/16 :goto_4

    .line 429
    .restart local v38       #visibleChanged:Z
    :cond_18
    const/4 v5, 0x0

    move/from16 v35, v5

    goto/16 :goto_5

    .line 485
    .restart local v17       #a:Landroid/content/res/TypedArray;
    .restart local v35       #typeChanged:Z
    .restart local v37       #visible:Z
    :cond_19
    const/16 v8, 0x8

    goto/16 :goto_6

    .line 503
    .restart local v30       #reportDrawNeeded:Z
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 505
    :cond_1b
    const/16 v10, 0x8

    goto/16 :goto_8

    .line 522
    .restart local v29       #relayoutResult:I
    :cond_1c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v18, v0

    .line 523
    .local v18, appInvertedScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v18

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v18

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_9

    .line 534
    .end local v18           #appInvertedScale:F
    .end local v29           #relayoutResult:I
    .end local v30           #reportDrawNeeded:Z
    :catchall_0
    move-exception v5

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 578
    .end local v17           #a:Landroid/content/res/TypedArray;
    .end local v37           #visible:Z
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 529
    .restart local v17       #a:Landroid/content/res/TypedArray;
    .restart local v29       #relayoutResult:I
    .restart local v30       #reportDrawNeeded:Z
    .restart local v33       #surfaceHeight:I
    .restart local v34       #surfaceWidth:I
    .restart local v37       #visible:Z
    :cond_1d
    const/4 v5, 0x0

    move/from16 v28, v5

    goto/16 :goto_a

    .line 547
    .restart local v28       #realSizeChanged:Z
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 573
    :catchall_2
    move-exception v5

    const/4 v6, 0x0

    :try_start_a
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 574
    if-eqz p2, :cond_1e

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 573
    :cond_1e
    throw v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 555
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_1f
    if-nez v22, :cond_20

    if-nez v23, :cond_20

    if-nez v32, :cond_20

    if-nez v38, :cond_20

    if-eqz v28, :cond_21

    .line 557
    :cond_20
    move-object/from16 v19, v21

    .restart local v19       #arr$:[Landroid/view/SurfaceHolder$Callback;
    :try_start_b
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_21

    aget-object v20, v19, v24

    .line 558
    .restart local v20       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    move v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    move/from16 v3, v27

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 557
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 561
    .end local v19           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v24           #i$:I
    .end local v25           #len$:I
    :cond_21
    if-eqz p2, :cond_24

    .line 562
    move-object/from16 v19, v21

    .restart local v19       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_d
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_24

    aget-object v20, v19, v24

    .line 563
    .restart local v20       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/SurfaceHolder$Callback2;

    move v5, v0

    if-eqz v5, :cond_22

    .line 564
    check-cast v20, Landroid/view/SurfaceHolder$Callback2;

    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 562
    :cond_22
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 570
    .end local v19           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v24           #i$:I
    .end local v25           #len$:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->release()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 573
    :cond_24
    const/4 v5, 0x0

    :try_start_c
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 574
    if-eqz p2, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 341
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 343
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 345
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 349
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 350
    invoke-direct {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 351
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 352
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 329
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 331
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 336
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 337
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    .line 302
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 303
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 324
    :goto_0
    return v0

    .line 306
    :cond_0
    const/4 v7, 0x1

    .line 307
    .local v7, opaque:Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 309
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 321
    :cond_1
    :goto_1
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    const/4 v7, 0x0

    :cond_2
    move v0, v7

    .line 324
    goto :goto_0

    .line 310
    :cond_3
    if-eqz p1, :cond_1

    .line 311
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 312
    .local v8, w:I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 313
    .local v6, h:I
    if-lez v8, :cond_1

    if-lez v6, :cond_1

    .line 314
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 316
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 317
    .local v1, l:I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 318
    .local v2, t:I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_1
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 604
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 605
    return-void
.end method

.method protected hideSurface()V
    .locals 13

    .prologue
    .line 251
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 255
    .local v12, metrics:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 256
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Landroid/view/SurfaceView;->mWidth:I

    iget v4, p0, Landroid/view/SurfaceView;->mHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v11, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-interface/range {v0 .. v11}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 264
    :cond_0
    return-void

    .line 261
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 258
    :catch_0
    move-exception v0

    .line 261
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0
.end method

.method public isFixedSize()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 615
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 202
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 204
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 205
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SurfaceView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 207
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 208
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 268
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 269
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 270
    invoke-direct {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 271
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 272
    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    iput-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 279
    :cond_0
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 280
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 282
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 283
    return-void

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 287
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 288
    .local v1, width:I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 289
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 290
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 213
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 214
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 215
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 216
    return-void

    :cond_0
    move v0, v1

    .line 213
    goto :goto_0

    :cond_1
    move v0, v1

    .line 214
    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 296
    .local v0, result:Z
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 297
    return v0
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 222
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 223
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 224
    return-void

    :cond_0
    move v0, v1

    .line 221
    goto :goto_0

    :cond_1
    move v0, v1

    .line 222
    goto :goto_1
.end method

.method public setWindowType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 401
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 402
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .parameter "isMediaOverlay"

    .prologue
    .line 366
    if-eqz p1, :cond_0

    const/16 v0, 0x3ec

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 369
    return-void

    .line 366
    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .parameter "onTop"

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 388
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 391
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected showSurface()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 239
    :cond_0
    return-void
.end method
