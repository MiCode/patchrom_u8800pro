.class Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
.super Lcom/android/internal/view/IInputContextCallback$Stub;
.source "InputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/InputConnectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputContextCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConnectionWrapper.ICC"

.field private static sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

.field private static sSequenceNumber:I


# instance fields
.field public mCursorCapsMode:I

.field public mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field public mHaveValue:Z

.field public mSelectedText:Ljava/lang/CharSequence;

.field public mSeq:I

.field public mTextAfterCursor:Ljava/lang/CharSequence;

.field public mTextBeforeCursor:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    invoke-direct {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;-><init>()V

    sput-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    .line 50
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/view/IInputContextCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V

    return-void
.end method

.method private dispose()V
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    if-nez v1, :cond_0

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 89
    sput-object p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    .line 91
    :cond_0
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .locals 4

    .prologue
    .line 59
    const-class v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    if-eqz v2, :cond_0

    .line 63
    sget-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    .line 64
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 73
    :goto_0
    sget v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    iput v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    .line 74
    monitor-exit v1

    return-object v0

    .line 69
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :cond_0
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    invoke-direct {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;-><init>()V

    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    goto :goto_0

    .line 75
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public setCursorCapsMode(II)V
    .locals 3
    .parameter "capsMode"
    .parameter "seq"

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_0

    .line 136
    iput p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    :goto_0
    monitor-exit p0

    .line 144
    return-void

    .line 140
    :cond_0
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setCursorCapsMode, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    .locals 3
    .parameter "extractedText"
    .parameter "seq"

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_0

    .line 149
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    :goto_0
    monitor-exit p0

    .line 157
    return-void

    .line 153
    :cond_0
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setExtractedText, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedText(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "selectedText"
    .parameter "seq"

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_0

    .line 123
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 130
    :goto_0
    monitor-exit p0

    .line 131
    return-void

    .line 127
    :cond_0
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setSelectedText, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextAfterCursor(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "textAfterCursor"
    .parameter "seq"

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    :goto_0
    monitor-exit p0

    .line 118
    return-void

    .line 114
    :cond_0
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setTextAfterCursor, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "textBeforeCursor"
    .parameter "seq"

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    :goto_0
    monitor-exit p0

    .line 105
    return-void

    .line 101
    :cond_0
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setTextBeforeCursor, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForResultLocked()V
    .locals 8

    .prologue
    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 166
    .local v4, startTime:J
    const-wide/16 v6, 0x7d0

    add-long v0, v4, v6

    .line 168
    .local v0, endTime:J
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-nez v6, :cond_0

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 170
    .local v2, remainingTime:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 171
    const-string v6, "InputConnectionWrapper.ICC"

    const-string v7, "Timed out waiting on IInputContextCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v2           #remainingTime:J
    :cond_0
    return-void

    .line 175
    .restart local v2       #remainingTime:J
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v6

    goto :goto_0
.end method
