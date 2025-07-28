vim.g.have_nerd_font = true   -- nerd_font 설정

vim.opt.expandtab = true        -- tab -> space
vim.opt.tabstop = 2             -- 탭 간격
vim.opt.shiftwidth = 2          -- 들여쓰기 간격
vim.o.showtabline = 2

vim.opt.sessionoptions = 'curdir,folds,globals,help,tabpages,terminal,winsize'

-- 기본 설정
vim.opt.mouse = "a"             -- 마우스 모드 활성화
vim.opt.number = true           -- 라인 번호 출력
vim.opt.relativenumber = true
vim.opt.incsearch = true        -- 실시간 검색
vim.opt.ignorecase = true       -- 대소문자 구분 없는 검색
vim.opt.smartcase = true     -- 대문자가 포함되면 대소문자 구분
vim.opt.cursorline = true    -- 현재 줄 강조
vim.opt.ruler = true            -- 커서 위치 표시

vim.opt.showcmd = true          -- 입력 중인 명령 표시
vim.opt.showmode = true         -- 모드 표시

-- 공백문자 설정
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- 줄바꿈 설정
vim.opt.wrap = true             -- 줄바꿈 할지
vim.opt.breakindent = true      -- 줄바꿈 시 들여쓰기 유지

-- 파일 자동 읽기 설정
vim.opt.autoread = true

-- 상태바 설정
vim.opt.laststatus = 3          -- 상태바 항상 표시 (2 개별 창에서, 3 통합)

-- 괄호 강조 설정
vim.opt.showmatch = true        -- 괄호 강조

-- Neovim 전용 설정
vim.opt.inccommand = "split"  -- 실시간 명령 미리보기
vim.opt.lazyredraw = true       -- 스크립트 실행 중 redraw 하지 않음
vim.opt.signcolumn = "yes"      -- 사인 컬럼 항상 표시
vim.opt.termguicolors = true    -- 24bit 컬러 지원

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.updatetime = 250

-- new window 방식
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 7
-- 파일 타입 플러그인 및 들여쓰기 설정
-- vim.cmd("filetype plugin indent on")


-- vim.opt.softtabstop = 2         -- 백스페이스 시 적용되는 공백
-- vim.opt.pumheight = 10       -- 팝업 메뉴 최대 높이 설정
-- vim.opt.textwidth = 80       -- 최대 텍스트 너비
-- Undo 파일 설정
-- vim.opt.undofile = true
-- vim.opt.undodir = vim.fn.expand("~/.config/nvim/undo")  -- undo 저장 경로

