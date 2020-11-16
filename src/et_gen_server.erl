%% Copyright (c) 2020 Nicolas Martyanoff <khaelin@gmail.com>.
%%
%% Permission to use, copy, modify, and/or distribute this software for any
%% purpose with or without fee is hereby granted, provided that the above
%% copyright notice and this permission notice appear in all copies.
%%
%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
%% REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
%% AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
%% INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
%% LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
%% OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
%% PERFORMANCE OF THIS SOFTWARE.

-module(et_gen_server).

-export_type([name/0, ref/0, request_id/0,
              start_ret/0, terminate_reason/0,
              init_ret/1, handle_call_ret/1, handle_cast_ret/1,
              handle_info_ret/1, handle_continue_ret/1,
              code_change_ret/1]).

-type name() :: {local, atom()}
              | {global, atom()}
              | {via, module(), term()}.

-type ref() :: pid()
             | atom()
             | {atom(), node()}
             | {global, atom()}
             | {via, module(), term()}.

-type request_id() :: term().

-type start_ret() :: {ok, pid()} | ignore | {error, term()}.

-type terminate_reason() :: normal | shutdown | {shutdown, term()} | term().

-type init_ret(State) ::
        {ok, State}
      | {ok, State, timeout() | hibernate | {continue, term()}}
      | {stop, Reason :: term()}
      | ignore.

-type handle_call_ret(State) ::
        {reply, Reply :: term(), State}
      | {reply, Reply :: term(), State,
         timeout() | hibernate | {continue, term()}}
      | {noreply, State}
      | {noreply, State, timeout() | hibernate | {continue, term()}}
      | {stop, Reason :: term(), Reply :: term(), State}
      | {stop, Reason :: term(), State}.

-type handle_cast_ret(State) ::
        {noreply, State}
      | {noreply, State, timeout() | hibernate | {continue, term()}}
      | {stop, Reason :: term(), State}.

-type handle_info_ret(State) ::
        {noreply, State}
      | {noreply, State, timeout() | hibernate | {continue, term()}}
      | {stop, Reason :: term(), State}.

-type handle_continue_ret(State) ::
        {noreply, State}
      | {noreply, State, timeout() | hibernate | {continue, term()}}
      | {stop, Reason :: term(), State}.

-type code_change_ret(State) :: {ok, State} | {error, term()}.
